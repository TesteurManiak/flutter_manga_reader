// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'manga_datasource.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$mangaDatasourceHash() => r'9ff855da28600d4da3be4c223f7750c6748706da';

/// See also [mangaDatasource].
@ProviderFor(mangaDatasource)
final mangaDatasourceProvider = AutoDisposeProvider<MangaDatasource>.internal(
  mangaDatasource,
  name: r'mangaDatasourceProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$mangaDatasourceHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef MangaDatasourceRef = AutoDisposeProviderRef<MangaDatasource>;
String _$fetchChapterPagesHash() => r'1798c6b73b0d74454237ab9dc63d250d49e00cfa';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

typedef FetchChapterPagesRef
    = AutoDisposeFutureProviderRef<Result<List<ChapterPage>, HttpError>>;

/// See also [fetchChapterPages].
@ProviderFor(fetchChapterPages)
const fetchChapterPagesProvider = FetchChapterPagesFamily();

/// See also [fetchChapterPages].
class FetchChapterPagesFamily
    extends Family<AsyncValue<Result<List<ChapterPage>, HttpError>>> {
  /// See also [fetchChapterPages].
  const FetchChapterPagesFamily();

  /// See also [fetchChapterPages].
  FetchChapterPagesProvider call(
    SourceChapter sourceChapter,
  ) {
    return FetchChapterPagesProvider(
      sourceChapter,
    );
  }

  @override
  FetchChapterPagesProvider getProviderOverride(
    covariant FetchChapterPagesProvider provider,
  ) {
    return call(
      provider.sourceChapter,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'fetchChapterPagesProvider';
}

/// See also [fetchChapterPages].
class FetchChapterPagesProvider
    extends AutoDisposeFutureProvider<Result<List<ChapterPage>, HttpError>> {
  /// See also [fetchChapterPages].
  FetchChapterPagesProvider(
    this.sourceChapter,
  ) : super.internal(
          (ref) => fetchChapterPages(
            ref,
            sourceChapter,
          ),
          from: fetchChapterPagesProvider,
          name: r'fetchChapterPagesProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fetchChapterPagesHash,
          dependencies: FetchChapterPagesFamily._dependencies,
          allTransitiveDependencies:
              FetchChapterPagesFamily._allTransitiveDependencies,
        );

  final SourceChapter sourceChapter;

  @override
  bool operator ==(Object other) {
    return other is FetchChapterPagesProvider &&
        other.sourceChapter == sourceChapter;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, sourceChapter.hashCode);

    return _SystemHash.finish(hash);
  }
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member
