// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'download_queue_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$chapterDownloadTaskHash() =>
    r'21630f511b2221a8ad07e7399e12b7ffb29f4967';

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

/// See also [chapterDownloadTask].
@ProviderFor(chapterDownloadTask)
const chapterDownloadTaskProvider = ChapterDownloadTaskFamily();

/// See also [chapterDownloadTask].
class ChapterDownloadTaskFamily extends Family<ChapterDownloadTask?> {
  /// See also [chapterDownloadTask].
  const ChapterDownloadTaskFamily();

  /// See also [chapterDownloadTask].
  ChapterDownloadTaskProvider call(
    int chapterId,
  ) {
    return ChapterDownloadTaskProvider(
      chapterId,
    );
  }

  @override
  ChapterDownloadTaskProvider getProviderOverride(
    covariant ChapterDownloadTaskProvider provider,
  ) {
    return call(
      provider.chapterId,
    );
  }

  static final Iterable<ProviderOrFamily> _dependencies = <ProviderOrFamily>[
    downloadQueueControllerProvider
  ];

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static final Iterable<ProviderOrFamily> _allTransitiveDependencies =
      <ProviderOrFamily>{
    downloadQueueControllerProvider,
    ...?downloadQueueControllerProvider.allTransitiveDependencies
  };

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'chapterDownloadTaskProvider';
}

/// See also [chapterDownloadTask].
class ChapterDownloadTaskProvider
    extends AutoDisposeProvider<ChapterDownloadTask?> {
  /// See also [chapterDownloadTask].
  ChapterDownloadTaskProvider(
    int chapterId,
  ) : this._internal(
          (ref) => chapterDownloadTask(
            ref as ChapterDownloadTaskRef,
            chapterId,
          ),
          from: chapterDownloadTaskProvider,
          name: r'chapterDownloadTaskProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$chapterDownloadTaskHash,
          dependencies: ChapterDownloadTaskFamily._dependencies,
          allTransitiveDependencies:
              ChapterDownloadTaskFamily._allTransitiveDependencies,
          chapterId: chapterId,
        );

  ChapterDownloadTaskProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.chapterId,
  }) : super.internal();

  final int chapterId;

  @override
  Override overrideWith(
    ChapterDownloadTask? Function(ChapterDownloadTaskRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ChapterDownloadTaskProvider._internal(
        (ref) => create(ref as ChapterDownloadTaskRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        chapterId: chapterId,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<ChapterDownloadTask?> createElement() {
    return _ChapterDownloadTaskProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ChapterDownloadTaskProvider && other.chapterId == chapterId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, chapterId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ChapterDownloadTaskRef on AutoDisposeProviderRef<ChapterDownloadTask?> {
  /// The parameter `chapterId` of this provider.
  int get chapterId;
}

class _ChapterDownloadTaskProviderElement
    extends AutoDisposeProviderElement<ChapterDownloadTask?>
    with ChapterDownloadTaskRef {
  _ChapterDownloadTaskProviderElement(super.provider);

  @override
  int get chapterId => (origin as ChapterDownloadTaskProvider).chapterId;
}

String _$downloadQueueControllerHash() =>
    r'f19c5112e7848509a583e8842b66eefd07a13e6a';

/// See also [DownloadQueueController].
@ProviderFor(DownloadQueueController)
final downloadQueueControllerProvider = NotifierProvider<
    DownloadQueueController, Map<int, ChapterDownloadTask>>.internal(
  DownloadQueueController.new,
  name: r'downloadQueueControllerProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$downloadQueueControllerHash,
  dependencies: <ProviderOrFamily>[
    localDatasourceProvider,
    fetchChapterPagesProvider
  ],
  allTransitiveDependencies: <ProviderOrFamily>{
    localDatasourceProvider,
    ...?localDatasourceProvider.allTransitiveDependencies,
    fetchChapterPagesProvider,
    ...?fetchChapterPagesProvider.allTransitiveDependencies
  },
);

typedef _$DownloadQueueController = Notifier<Map<int, ChapterDownloadTask>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
