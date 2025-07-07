// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chapter_history.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$watchChapterHistoryHash() =>
    r'2e92810c0997e66adbbc9ca48e48746ae7198f6a';

/// See also [watchChapterHistory].
@ProviderFor(watchChapterHistory)
final watchChapterHistoryProvider =
    StreamProvider<List<ChapterHistory>>.internal(
      watchChapterHistory,
      name: r'watchChapterHistoryProvider',
      debugGetCreateSourceHash:
          const bool.fromEnvironment('dart.vm.product')
              ? null
              : _$watchChapterHistoryHash,
      dependencies: <ProviderOrFamily>[localDatasourceProvider],
      allTransitiveDependencies: <ProviderOrFamily>{
        localDatasourceProvider,
        ...?localDatasourceProvider.allTransitiveDependencies,
      },
    );

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef WatchChapterHistoryRef = StreamProviderRef<List<ChapterHistory>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
