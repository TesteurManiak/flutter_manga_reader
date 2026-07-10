import 'dart:async';
import 'dart:convert' show utf8;
import 'dart:io';
import 'dart:ui' as ui show ImmutableBuffer;

import 'package:crypto/crypto.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart';

/// Credits: Simon Lightfoot (slightfoot)
/// https://gist.github.com/slightfoot/2bdf52a5ec0972344e2a18fa5c44e2cf
class CachedImageProvider extends ImageProvider<String> {
  const CachedImageProvider(this.url, {this.httpClient});

  final String url;
  final HttpClient? httpClient;

  static final _sharedHttpClient = HttpClient()..autoUncompress = false;

  @override
  Future<String> obtainKey(ImageConfiguration configuration) =>
      SynchronousFuture(url);

  static final _inFlightImages = <String, Completer<ImageInfo>>{};

  @override
  ImageStreamCompleter loadImage(String key, ImageDecoderCallback decode) {
    // Search cache for existing in-memory image
    final image = LruCache.instance.get(url);
    if (image != null) {
      debugPrint('Loading from memory cache: $url');
      // If we have a an image in the cache, return it immediately
      return OneFrameImageStreamCompleter(SynchronousFuture(image.clone()));
    }

    if (_inFlightImages.containsKey(url)) {
      return OneFrameImageStreamCompleter(_inFlightImages[url]!.future);
    }

    final completer = Completer<ImageInfo>();
    _inFlightImages.putIfAbsent(url, () => completer);

    Future<ImageInfo> loader;

    // Check disk cache
    if (DiskCache.instance.contains(url)) {
      debugPrint('Loading from disk cache: $url');
      loader = DiskCache.instance
          .get(url)
          .then((bytes) => _loadImageFromBytes(bytes, decode));
    } else {
      loader = _loadImageFromUrl(url, decode);
    }

    loader
        .then((imageInfo) {
          LruCache.instance.set(url, imageInfo);
          completer.complete(imageInfo);
        })
        .catchError((error, stackTrace) {
          LruCache.instance.remove(url);
          completer.completeError(error, stackTrace);
        })
        .whenComplete(() {
          _inFlightImages.remove(url);
        });

    return OneFrameImageStreamCompleter(completer.future);
  }

  Future<ImageInfo> _loadImageFromUrl(
    String url,
    ImageDecoderCallback decode,
  ) async {
    debugPrint('Loading from network: $url');

    final resolved = Uri.base.resolve(url);
    final request = await (httpClient ?? _sharedHttpClient).getUrl(resolved);
    final response = await request.close();
    if (response.statusCode != HttpStatus.ok) {
      // Drain the response body to avoid leaks.
      await response.drain();
      throw Exception(
        'Failed to load image from $url: ${response.statusCode}',
      );
    }

    final bytes = await consolidateHttpClientResponseBytes(response);
    if (bytes.lengthInBytes == 0) {
      throw Exception('Image is an empty file: $resolved');
    }

    DiskCache.instance.set(url, bytes);

    return await _loadImageFromBytes(bytes, decode);
  }

  Future<ImageInfo> _loadImageFromBytes(
    Uint8List bytes,
    ImageDecoderCallback decode,
  ) async {
    final codec = await decode(await ui.ImmutableBuffer.fromUint8List(bytes));
    try {
      final frame = await codec.getNextFrame();
      return ImageInfo(image: frame.image, debugLabel: url);
    } finally {
      codec.dispose();
    }
  }
}

class LruCache {
  LruCache(this.maxSize);

  final int maxSize;
  final _cache = <String, ImageInfo>{};

  // first is least recently used, newest is last
  final _lru = <String>{};

  static final LruCache instance = LruCache(50);

  ImageInfo? get(String key) {
    final imageInfo = _cache[key];
    if (imageInfo != null) {
      _lru.remove(key);
      _lru.add(key);
      return imageInfo;
    }
    return null;
  }

  void set(String key, ImageInfo image) {
    _cache.putIfAbsent(key, () => image.clone());
    _lru.add(key);
    if (_cache.length > maxSize) {
      remove(_lru.first);
    }
  }

  void remove(String key) {
    final image = _cache.remove(key);
    _lru.remove(key);
    image?.image.dispose();
  }

  void clear() {
    for (final image in _cache.values) {
      image.image.dispose();
    }
    _cache.clear();
    _lru.clear();
  }
}

class DiskCache {
  DiskCache._(
    this.directory,
    this.maxSize,
    this.maxCount,
  );

  final Directory directory;
  final int maxSize;
  final int maxCount;

  static DiskCache? _instance;

  static DiskCache get instance => _instance!;

  static Future<void> init({
    int maxSize = 100 * 1024 * 1024,
    int maxCount = 100,
  }) async {
    if (_instance != null) return;

    final dir = await getApplicationCacheDirectory();
    final imageDir = Directory(path.join(dir.path, 'image_cache'));
    imageDir.createSync(recursive: true);
    // debugPrint('Disk cache: ${imageDir.path}');

    _instance ??= DiskCache._(imageDir, maxSize, maxCount);
    await _instance!.load();
  }

  // index of files in cache, key is sha1 of url
  final _index = <String, File>{};

  // first is least recently used, newest is last
  final _lru = <String>{};

  // size in bytes
  int _currentSize = 0;

  Future<void> load() async {
    _index.clear();
    _lru.clear();
    _currentSize = 0;
    await for (final file in directory.list()) {
      if (file is! File) continue;
      final key = path.basename(file.path);
      _index[key] = file;
      _currentSize += file.lengthSync();
      _lru.add(file.path);
    }
  }

  String keyFor(String url) => sha1.convert(utf8.encode(url)).toString();

  bool contains(String url) => _index.containsKey(keyFor(url));

  Future<Uint8List> get(String url) {
    final key = keyFor(url);
    final file = _index[key];
    if (file != null) {
      _lru.remove(key);
      _lru.add(key);
      return file.readAsBytes();
    }
    throw Exception('Not found in cache: $url');
  }

  Future<void> set(String url, Uint8List data) async {
    final key = keyFor(url);
    if (_index.containsKey(key)) return;

    final file = File(path.join(directory.path, key));
    await file.writeAsBytes(data);
    // debugPrint('Wrote ${data.lengthInBytes} bytes to ${file.path}');

    _index.putIfAbsent(key, () => file);
    _lru.add(key);
    _currentSize += data.lengthInBytes;

    // evict least recently used
    if (_currentSize > maxSize || _index.length > maxCount) {
      _removeWithKey(_lru.first);
    }
  }

  void remove(String url) => _removeWithKey(keyFor(url));

  void _removeWithKey(String key) {
    final file = _index.remove(key);
    _lru.remove(key);
    if (file != null) {
      file.deleteSync();
      _currentSize -= file.lengthSync();
    }
  }

  void clear() {
    for (final file in _index.values) {
      file.delete().ignore();
    }
    _index.clear();
    _lru.clear();
    _currentSize = 0;
  }
}
