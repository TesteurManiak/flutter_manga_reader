// This is a generated file - do not edit.
//
// Generated from protos/tachiyomi.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'tachiyomi.pbenum.dart';

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'tachiyomi.pbenum.dart';

/// serial name 'eu.kanade.tachiyomi.data.backup.models.Backup'
class Backup extends $pb.GeneratedMessage {
  factory Backup({
    $core.Iterable<BackupManga>? backupManga,
    $core.Iterable<BackupCategory>? backupCategories,
    $core.Iterable<BrokenBackupSource>? backupBrokenSources,
    $core.Iterable<BackupSource>? backupSources,
    $core.Iterable<BackupPreference>? backupPreferences,
    $core.Iterable<BackupSourcePreferences>? backupSourcePreferences,
  }) {
    final result = create();
    if (backupManga != null) result.backupManga.addAll(backupManga);
    if (backupCategories != null)
      result.backupCategories.addAll(backupCategories);
    if (backupBrokenSources != null)
      result.backupBrokenSources.addAll(backupBrokenSources);
    if (backupSources != null) result.backupSources.addAll(backupSources);
    if (backupPreferences != null)
      result.backupPreferences.addAll(backupPreferences);
    if (backupSourcePreferences != null)
      result.backupSourcePreferences.addAll(backupSourcePreferences);
    return result;
  }

  Backup._();

  factory Backup.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Backup.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Backup',
      createEmptyInstance: create)
    ..pPM<BackupManga>(1, _omitFieldNames ? '' : 'backupManga',
        protoName: 'backupManga', subBuilder: BackupManga.create)
    ..pPM<BackupCategory>(2, _omitFieldNames ? '' : 'backupCategories',
        protoName: 'backupCategories', subBuilder: BackupCategory.create)
    ..pPM<BrokenBackupSource>(100, _omitFieldNames ? '' : 'backupBrokenSources',
        protoName: 'backupBrokenSources', subBuilder: BrokenBackupSource.create)
    ..pPM<BackupSource>(101, _omitFieldNames ? '' : 'backupSources',
        protoName: 'backupSources', subBuilder: BackupSource.create)
    ..pPM<BackupPreference>(104, _omitFieldNames ? '' : 'backupPreferences',
        protoName: 'backupPreferences', subBuilder: BackupPreference.create)
    ..pPM<BackupSourcePreferences>(
        105, _omitFieldNames ? '' : 'backupSourcePreferences',
        protoName: 'backupSourcePreferences',
        subBuilder: BackupSourcePreferences.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Backup clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Backup copyWith(void Function(Backup) updates) =>
      super.copyWith((message) => updates(message as Backup)) as Backup;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Backup create() => Backup._();
  @$core.override
  Backup createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Backup getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Backup>(create);
  static Backup? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<BackupManga> get backupManga => $_getList(0);

  /// WARNING: a default value decoded when value is missing
  @$pb.TagNumber(2)
  $pb.PbList<BackupCategory> get backupCategories => $_getList(1);

  /// WARNING: a default value decoded when value is missing
  @$pb.TagNumber(100)
  $pb.PbList<BrokenBackupSource> get backupBrokenSources => $_getList(2);

  /// WARNING: a default value decoded when value is missing
  @$pb.TagNumber(101)
  $pb.PbList<BackupSource> get backupSources => $_getList(3);

  /// WARNING: a default value decoded when value is missing
  @$pb.TagNumber(104)
  $pb.PbList<BackupPreference> get backupPreferences => $_getList(4);

  /// WARNING: a default value decoded when value is missing
  @$pb.TagNumber(105)
  $pb.PbList<BackupSourcePreferences> get backupSourcePreferences =>
      $_getList(5);
}

/// serial name 'eu.kanade.tachiyomi.data.backup.models.BackupManga'
class BackupManga extends $pb.GeneratedMessage {
  factory BackupManga({
    $fixnum.Int64? source,
    $core.String? url,
    $core.String? title,
    $core.String? artist,
    $core.String? author,
    $core.String? description,
    $core.Iterable<$core.String>? genre,
    $core.int? status,
    $core.String? thumbnailUrl,
    $fixnum.Int64? dateAdded,
    $core.int? viewer,
    $core.Iterable<BackupChapter>? chapters,
    $core.Iterable<$fixnum.Int64>? categories,
    $core.Iterable<BackupTracking>? tracking,
    $core.bool? favorite,
    $core.int? chapterFlags,
    $core.Iterable<BrokenBackupHistory>? brokenHistory,
    $core.int? viewerFlags,
    $core.Iterable<BackupHistory>? history,
    UpdateStrategy? updateStrategy,
    $fixnum.Int64? lastModifiedAt,
    $fixnum.Int64? favoriteModifiedAt,
  }) {
    final result = create();
    if (source != null) result.source = source;
    if (url != null) result.url = url;
    if (title != null) result.title = title;
    if (artist != null) result.artist = artist;
    if (author != null) result.author = author;
    if (description != null) result.description = description;
    if (genre != null) result.genre.addAll(genre);
    if (status != null) result.status = status;
    if (thumbnailUrl != null) result.thumbnailUrl = thumbnailUrl;
    if (dateAdded != null) result.dateAdded = dateAdded;
    if (viewer != null) result.viewer = viewer;
    if (chapters != null) result.chapters.addAll(chapters);
    if (categories != null) result.categories.addAll(categories);
    if (tracking != null) result.tracking.addAll(tracking);
    if (favorite != null) result.favorite = favorite;
    if (chapterFlags != null) result.chapterFlags = chapterFlags;
    if (brokenHistory != null) result.brokenHistory.addAll(brokenHistory);
    if (viewerFlags != null) result.viewerFlags = viewerFlags;
    if (history != null) result.history.addAll(history);
    if (updateStrategy != null) result.updateStrategy = updateStrategy;
    if (lastModifiedAt != null) result.lastModifiedAt = lastModifiedAt;
    if (favoriteModifiedAt != null)
      result.favoriteModifiedAt = favoriteModifiedAt;
    return result;
  }

  BackupManga._();

  factory BackupManga.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BackupManga.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BackupManga',
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'source', $pb.PbFieldType.Q6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aQS(2, _omitFieldNames ? '' : 'url')
    ..aOS(3, _omitFieldNames ? '' : 'title')
    ..aOS(4, _omitFieldNames ? '' : 'artist')
    ..aOS(5, _omitFieldNames ? '' : 'author')
    ..aOS(6, _omitFieldNames ? '' : 'description')
    ..pPS(7, _omitFieldNames ? '' : 'genre')
    ..aI(8, _omitFieldNames ? '' : 'status')
    ..aOS(9, _omitFieldNames ? '' : 'thumbnailUrl', protoName: 'thumbnailUrl')
    ..aInt64(13, _omitFieldNames ? '' : 'dateAdded', protoName: 'dateAdded')
    ..aI(14, _omitFieldNames ? '' : 'viewer')
    ..pPM<BackupChapter>(16, _omitFieldNames ? '' : 'chapters',
        subBuilder: BackupChapter.create)
    ..p<$fixnum.Int64>(
        17, _omitFieldNames ? '' : 'categories', $pb.PbFieldType.P6)
    ..pPM<BackupTracking>(18, _omitFieldNames ? '' : 'tracking',
        subBuilder: BackupTracking.create)
    ..aOB(100, _omitFieldNames ? '' : 'favorite')
    ..aI(101, _omitFieldNames ? '' : 'chapterFlags', protoName: 'chapterFlags')
    ..pPM<BrokenBackupHistory>(102, _omitFieldNames ? '' : 'brokenHistory',
        protoName: 'brokenHistory', subBuilder: BrokenBackupHistory.create)
    ..aI(103, _omitFieldNames ? '' : 'viewerFlags')
    ..pPM<BackupHistory>(104, _omitFieldNames ? '' : 'history',
        subBuilder: BackupHistory.create)
    ..aE<UpdateStrategy>(105, _omitFieldNames ? '' : 'updateStrategy',
        protoName: 'updateStrategy', enumValues: UpdateStrategy.values)
    ..aInt64(106, _omitFieldNames ? '' : 'lastModifiedAt',
        protoName: 'lastModifiedAt')
    ..aInt64(107, _omitFieldNames ? '' : 'favoriteModifiedAt',
        protoName: 'favoriteModifiedAt');

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BackupManga clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BackupManga copyWith(void Function(BackupManga) updates) =>
      super.copyWith((message) => updates(message as BackupManga))
          as BackupManga;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BackupManga create() => BackupManga._();
  @$core.override
  BackupManga createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static BackupManga getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BackupManga>(create);
  static BackupManga? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get source => $_getI64(0);
  @$pb.TagNumber(1)
  set source($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSource() => $_has(0);
  @$pb.TagNumber(1)
  void clearSource() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get url => $_getSZ(1);
  @$pb.TagNumber(2)
  set url($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasUrl() => $_has(1);
  @$pb.TagNumber(2)
  void clearUrl() => $_clearField(2);

  /// WARNING: a default value decoded when value is missing
  @$pb.TagNumber(3)
  $core.String get title => $_getSZ(2);
  @$pb.TagNumber(3)
  set title($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasTitle() => $_has(2);
  @$pb.TagNumber(3)
  void clearTitle() => $_clearField(3);

  /// WARNING: a default value decoded when value is missing
  @$pb.TagNumber(4)
  $core.String get artist => $_getSZ(3);
  @$pb.TagNumber(4)
  set artist($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasArtist() => $_has(3);
  @$pb.TagNumber(4)
  void clearArtist() => $_clearField(4);

  /// WARNING: a default value decoded when value is missing
  @$pb.TagNumber(5)
  $core.String get author => $_getSZ(4);
  @$pb.TagNumber(5)
  set author($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasAuthor() => $_has(4);
  @$pb.TagNumber(5)
  void clearAuthor() => $_clearField(5);

  /// WARNING: a default value decoded when value is missing
  @$pb.TagNumber(6)
  $core.String get description => $_getSZ(5);
  @$pb.TagNumber(6)
  set description($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasDescription() => $_has(5);
  @$pb.TagNumber(6)
  void clearDescription() => $_clearField(6);

  /// WARNING: a default value decoded when value is missing
  @$pb.TagNumber(7)
  $pb.PbList<$core.String> get genre => $_getList(6);

  /// WARNING: a default value decoded when value is missing
  @$pb.TagNumber(8)
  $core.int get status => $_getIZ(7);
  @$pb.TagNumber(8)
  set status($core.int value) => $_setSignedInt32(7, value);
  @$pb.TagNumber(8)
  $core.bool hasStatus() => $_has(7);
  @$pb.TagNumber(8)
  void clearStatus() => $_clearField(8);

  /// WARNING: a default value decoded when value is missing
  @$pb.TagNumber(9)
  $core.String get thumbnailUrl => $_getSZ(8);
  @$pb.TagNumber(9)
  set thumbnailUrl($core.String value) => $_setString(8, value);
  @$pb.TagNumber(9)
  $core.bool hasThumbnailUrl() => $_has(8);
  @$pb.TagNumber(9)
  void clearThumbnailUrl() => $_clearField(9);

  /// WARNING: a default value decoded when value is missing
  @$pb.TagNumber(13)
  $fixnum.Int64 get dateAdded => $_getI64(9);
  @$pb.TagNumber(13)
  set dateAdded($fixnum.Int64 value) => $_setInt64(9, value);
  @$pb.TagNumber(13)
  $core.bool hasDateAdded() => $_has(9);
  @$pb.TagNumber(13)
  void clearDateAdded() => $_clearField(13);

  /// WARNING: a default value decoded when value is missing
  @$pb.TagNumber(14)
  $core.int get viewer => $_getIZ(10);
  @$pb.TagNumber(14)
  set viewer($core.int value) => $_setSignedInt32(10, value);
  @$pb.TagNumber(14)
  $core.bool hasViewer() => $_has(10);
  @$pb.TagNumber(14)
  void clearViewer() => $_clearField(14);

  /// WARNING: a default value decoded when value is missing
  @$pb.TagNumber(16)
  $pb.PbList<BackupChapter> get chapters => $_getList(11);

  /// WARNING: a default value decoded when value is missing
  @$pb.TagNumber(17)
  $pb.PbList<$fixnum.Int64> get categories => $_getList(12);

  /// WARNING: a default value decoded when value is missing
  @$pb.TagNumber(18)
  $pb.PbList<BackupTracking> get tracking => $_getList(13);

  /// WARNING: a default value decoded when value is missing
  @$pb.TagNumber(100)
  $core.bool get favorite => $_getBF(14);
  @$pb.TagNumber(100)
  set favorite($core.bool value) => $_setBool(14, value);
  @$pb.TagNumber(100)
  $core.bool hasFavorite() => $_has(14);
  @$pb.TagNumber(100)
  void clearFavorite() => $_clearField(100);

  /// WARNING: a default value decoded when value is missing
  @$pb.TagNumber(101)
  $core.int get chapterFlags => $_getIZ(15);
  @$pb.TagNumber(101)
  set chapterFlags($core.int value) => $_setSignedInt32(15, value);
  @$pb.TagNumber(101)
  $core.bool hasChapterFlags() => $_has(15);
  @$pb.TagNumber(101)
  void clearChapterFlags() => $_clearField(101);

  /// WARNING: a default value decoded when value is missing
  @$pb.TagNumber(102)
  $pb.PbList<BrokenBackupHistory> get brokenHistory => $_getList(16);

  /// WARNING: a default value decoded when value is missing
  @$pb.TagNumber(103)
  $core.int get viewerFlags => $_getIZ(17);
  @$pb.TagNumber(103)
  set viewerFlags($core.int value) => $_setSignedInt32(17, value);
  @$pb.TagNumber(103)
  $core.bool hasViewerFlags() => $_has(17);
  @$pb.TagNumber(103)
  void clearViewerFlags() => $_clearField(103);

  /// WARNING: a default value decoded when value is missing
  @$pb.TagNumber(104)
  $pb.PbList<BackupHistory> get history => $_getList(18);

  /// WARNING: a default value decoded when value is missing
  @$pb.TagNumber(105)
  UpdateStrategy get updateStrategy => $_getN(19);
  @$pb.TagNumber(105)
  set updateStrategy(UpdateStrategy value) => $_setField(105, value);
  @$pb.TagNumber(105)
  $core.bool hasUpdateStrategy() => $_has(19);
  @$pb.TagNumber(105)
  void clearUpdateStrategy() => $_clearField(105);

  /// WARNING: a default value decoded when value is missing
  @$pb.TagNumber(106)
  $fixnum.Int64 get lastModifiedAt => $_getI64(20);
  @$pb.TagNumber(106)
  set lastModifiedAt($fixnum.Int64 value) => $_setInt64(20, value);
  @$pb.TagNumber(106)
  $core.bool hasLastModifiedAt() => $_has(20);
  @$pb.TagNumber(106)
  void clearLastModifiedAt() => $_clearField(106);

  /// WARNING: a default value decoded when value is missing
  @$pb.TagNumber(107)
  $fixnum.Int64 get favoriteModifiedAt => $_getI64(21);
  @$pb.TagNumber(107)
  set favoriteModifiedAt($fixnum.Int64 value) => $_setInt64(21, value);
  @$pb.TagNumber(107)
  $core.bool hasFavoriteModifiedAt() => $_has(21);
  @$pb.TagNumber(107)
  void clearFavoriteModifiedAt() => $_clearField(107);
}

/// serial name 'eu.kanade.tachiyomi.data.backup.models.BackupCategory'
class BackupCategory extends $pb.GeneratedMessage {
  factory BackupCategory({
    $core.String? name,
    $fixnum.Int64? order,
    $fixnum.Int64? flags,
  }) {
    final result = create();
    if (name != null) result.name = name;
    if (order != null) result.order = order;
    if (flags != null) result.flags = flags;
    return result;
  }

  BackupCategory._();

  factory BackupCategory.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BackupCategory.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BackupCategory',
      createEmptyInstance: create)
    ..aQS(1, _omitFieldNames ? '' : 'name')
    ..aInt64(2, _omitFieldNames ? '' : 'order')
    ..aInt64(100, _omitFieldNames ? '' : 'flags');

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BackupCategory clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BackupCategory copyWith(void Function(BackupCategory) updates) =>
      super.copyWith((message) => updates(message as BackupCategory))
          as BackupCategory;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BackupCategory create() => BackupCategory._();
  @$core.override
  BackupCategory createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static BackupCategory getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BackupCategory>(create);
  static BackupCategory? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => $_clearField(1);

  /// WARNING: a default value decoded when value is missing
  @$pb.TagNumber(2)
  $fixnum.Int64 get order => $_getI64(1);
  @$pb.TagNumber(2)
  set order($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasOrder() => $_has(1);
  @$pb.TagNumber(2)
  void clearOrder() => $_clearField(2);

  /// WARNING: a default value decoded when value is missing
  @$pb.TagNumber(100)
  $fixnum.Int64 get flags => $_getI64(2);
  @$pb.TagNumber(100)
  set flags($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(100)
  $core.bool hasFlags() => $_has(2);
  @$pb.TagNumber(100)
  void clearFlags() => $_clearField(100);
}

/// serial name 'eu.kanade.tachiyomi.data.backup.models.BrokenBackupSource'
class BrokenBackupSource extends $pb.GeneratedMessage {
  factory BrokenBackupSource({
    $fixnum.Int64? sourceId,
  }) {
    final result = create();
    if (sourceId != null) result.sourceId = sourceId;
    return result;
  }

  BrokenBackupSource._();

  factory BrokenBackupSource.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BrokenBackupSource.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BrokenBackupSource',
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'sourceId', $pb.PbFieldType.Q6,
        protoName: 'sourceId', defaultOrMaker: $fixnum.Int64.ZERO);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BrokenBackupSource clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BrokenBackupSource copyWith(void Function(BrokenBackupSource) updates) =>
      super.copyWith((message) => updates(message as BrokenBackupSource))
          as BrokenBackupSource;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BrokenBackupSource create() => BrokenBackupSource._();
  @$core.override
  BrokenBackupSource createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static BrokenBackupSource getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BrokenBackupSource>(create);
  static BrokenBackupSource? _defaultInstance;

  /// WARNING: a default value decoded when value is missing
  /// optional string name = 0;
  @$pb.TagNumber(1)
  $fixnum.Int64 get sourceId => $_getI64(0);
  @$pb.TagNumber(1)
  set sourceId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSourceId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSourceId() => $_clearField(1);
}

/// serial name 'eu.kanade.tachiyomi.data.backup.models.BackupSource'
class BackupSource extends $pb.GeneratedMessage {
  factory BackupSource({
    $core.String? name,
    $fixnum.Int64? sourceId,
  }) {
    final result = create();
    if (name != null) result.name = name;
    if (sourceId != null) result.sourceId = sourceId;
    return result;
  }

  BackupSource._();

  factory BackupSource.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BackupSource.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BackupSource',
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..a<$fixnum.Int64>(2, _omitFieldNames ? '' : 'sourceId', $pb.PbFieldType.Q6,
        protoName: 'sourceId', defaultOrMaker: $fixnum.Int64.ZERO);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BackupSource clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BackupSource copyWith(void Function(BackupSource) updates) =>
      super.copyWith((message) => updates(message as BackupSource))
          as BackupSource;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BackupSource create() => BackupSource._();
  @$core.override
  BackupSource createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static BackupSource getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BackupSource>(create);
  static BackupSource? _defaultInstance;

  /// WARNING: a default value decoded when value is missing
  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get sourceId => $_getI64(1);
  @$pb.TagNumber(2)
  set sourceId($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSourceId() => $_has(1);
  @$pb.TagNumber(2)
  void clearSourceId() => $_clearField(2);
}

/// serial name 'eu.kanade.tachiyomi.data.backup.models.BackupPreference'
class BackupPreference extends $pb.GeneratedMessage {
  factory BackupPreference({
    $core.String? key,
    PreferenceValue? value,
  }) {
    final result = create();
    if (key != null) result.key = key;
    if (value != null) result.value = value;
    return result;
  }

  BackupPreference._();

  factory BackupPreference.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BackupPreference.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BackupPreference',
      createEmptyInstance: create)
    ..aQS(1, _omitFieldNames ? '' : 'key')
    ..aQM<PreferenceValue>(2, _omitFieldNames ? '' : 'value',
        subBuilder: PreferenceValue.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BackupPreference clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BackupPreference copyWith(void Function(BackupPreference) updates) =>
      super.copyWith((message) => updates(message as BackupPreference))
          as BackupPreference;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BackupPreference create() => BackupPreference._();
  @$core.override
  BackupPreference createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static BackupPreference getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BackupPreference>(create);
  static BackupPreference? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get key => $_getSZ(0);
  @$pb.TagNumber(1)
  set key($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearKey() => $_clearField(1);

  @$pb.TagNumber(2)
  PreferenceValue get value => $_getN(1);
  @$pb.TagNumber(2)
  set value(PreferenceValue value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearValue() => $_clearField(2);
  @$pb.TagNumber(2)
  PreferenceValue ensureValue() => $_ensure(1);
}

/// serial name 'eu.kanade.tachiyomi.data.backup.models.BackupSourcePreferences'
class BackupSourcePreferences extends $pb.GeneratedMessage {
  factory BackupSourcePreferences({
    $core.String? sourceKey,
    $core.Iterable<BackupPreference>? prefs,
  }) {
    final result = create();
    if (sourceKey != null) result.sourceKey = sourceKey;
    if (prefs != null) result.prefs.addAll(prefs);
    return result;
  }

  BackupSourcePreferences._();

  factory BackupSourcePreferences.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BackupSourcePreferences.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BackupSourcePreferences',
      createEmptyInstance: create)
    ..aQS(1, _omitFieldNames ? '' : 'sourceKey', protoName: 'sourceKey')
    ..pPM<BackupPreference>(2, _omitFieldNames ? '' : 'prefs',
        subBuilder: BackupPreference.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BackupSourcePreferences clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BackupSourcePreferences copyWith(
          void Function(BackupSourcePreferences) updates) =>
      super.copyWith((message) => updates(message as BackupSourcePreferences))
          as BackupSourcePreferences;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BackupSourcePreferences create() => BackupSourcePreferences._();
  @$core.override
  BackupSourcePreferences createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static BackupSourcePreferences getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BackupSourcePreferences>(create);
  static BackupSourcePreferences? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get sourceKey => $_getSZ(0);
  @$pb.TagNumber(1)
  set sourceKey($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSourceKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearSourceKey() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbList<BackupPreference> get prefs => $_getList(1);
}

/// serial name 'eu.kanade.tachiyomi.data.backup.models.BackupChapter'
class BackupChapter extends $pb.GeneratedMessage {
  factory BackupChapter({
    $core.String? url,
    $core.String? name,
    $core.String? scanlator,
    $core.bool? read,
    $core.bool? bookmark,
    $fixnum.Int64? lastPageRead,
    $fixnum.Int64? dateFetch,
    $fixnum.Int64? dateUpload,
    $core.double? chapterNumber,
    $fixnum.Int64? sourceOrder,
    $fixnum.Int64? lastModifiedAt,
  }) {
    final result = create();
    if (url != null) result.url = url;
    if (name != null) result.name = name;
    if (scanlator != null) result.scanlator = scanlator;
    if (read != null) result.read = read;
    if (bookmark != null) result.bookmark = bookmark;
    if (lastPageRead != null) result.lastPageRead = lastPageRead;
    if (dateFetch != null) result.dateFetch = dateFetch;
    if (dateUpload != null) result.dateUpload = dateUpload;
    if (chapterNumber != null) result.chapterNumber = chapterNumber;
    if (sourceOrder != null) result.sourceOrder = sourceOrder;
    if (lastModifiedAt != null) result.lastModifiedAt = lastModifiedAt;
    return result;
  }

  BackupChapter._();

  factory BackupChapter.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BackupChapter.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BackupChapter',
      createEmptyInstance: create)
    ..aQS(1, _omitFieldNames ? '' : 'url')
    ..aQS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'scanlator')
    ..aOB(4, _omitFieldNames ? '' : 'read')
    ..aOB(5, _omitFieldNames ? '' : 'bookmark')
    ..aInt64(6, _omitFieldNames ? '' : 'lastPageRead',
        protoName: 'lastPageRead')
    ..aInt64(7, _omitFieldNames ? '' : 'dateFetch', protoName: 'dateFetch')
    ..aInt64(8, _omitFieldNames ? '' : 'dateUpload', protoName: 'dateUpload')
    ..aD(9, _omitFieldNames ? '' : 'chapterNumber',
        protoName: 'chapterNumber', fieldType: $pb.PbFieldType.OF)
    ..aInt64(10, _omitFieldNames ? '' : 'sourceOrder', protoName: 'sourceOrder')
    ..aInt64(11, _omitFieldNames ? '' : 'lastModifiedAt',
        protoName: 'lastModifiedAt');

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BackupChapter clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BackupChapter copyWith(void Function(BackupChapter) updates) =>
      super.copyWith((message) => updates(message as BackupChapter))
          as BackupChapter;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BackupChapter create() => BackupChapter._();
  @$core.override
  BackupChapter createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static BackupChapter getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BackupChapter>(create);
  static BackupChapter? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get url => $_getSZ(0);
  @$pb.TagNumber(1)
  set url($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasUrl() => $_has(0);
  @$pb.TagNumber(1)
  void clearUrl() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => $_clearField(2);

  /// WARNING: a default value decoded when value is missing
  @$pb.TagNumber(3)
  $core.String get scanlator => $_getSZ(2);
  @$pb.TagNumber(3)
  set scanlator($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasScanlator() => $_has(2);
  @$pb.TagNumber(3)
  void clearScanlator() => $_clearField(3);

  /// WARNING: a default value decoded when value is missing
  @$pb.TagNumber(4)
  $core.bool get read => $_getBF(3);
  @$pb.TagNumber(4)
  set read($core.bool value) => $_setBool(3, value);
  @$pb.TagNumber(4)
  $core.bool hasRead() => $_has(3);
  @$pb.TagNumber(4)
  void clearRead() => $_clearField(4);

  /// WARNING: a default value decoded when value is missing
  @$pb.TagNumber(5)
  $core.bool get bookmark => $_getBF(4);
  @$pb.TagNumber(5)
  set bookmark($core.bool value) => $_setBool(4, value);
  @$pb.TagNumber(5)
  $core.bool hasBookmark() => $_has(4);
  @$pb.TagNumber(5)
  void clearBookmark() => $_clearField(5);

  /// WARNING: a default value decoded when value is missing
  @$pb.TagNumber(6)
  $fixnum.Int64 get lastPageRead => $_getI64(5);
  @$pb.TagNumber(6)
  set lastPageRead($fixnum.Int64 value) => $_setInt64(5, value);
  @$pb.TagNumber(6)
  $core.bool hasLastPageRead() => $_has(5);
  @$pb.TagNumber(6)
  void clearLastPageRead() => $_clearField(6);

  /// WARNING: a default value decoded when value is missing
  @$pb.TagNumber(7)
  $fixnum.Int64 get dateFetch => $_getI64(6);
  @$pb.TagNumber(7)
  set dateFetch($fixnum.Int64 value) => $_setInt64(6, value);
  @$pb.TagNumber(7)
  $core.bool hasDateFetch() => $_has(6);
  @$pb.TagNumber(7)
  void clearDateFetch() => $_clearField(7);

  /// WARNING: a default value decoded when value is missing
  @$pb.TagNumber(8)
  $fixnum.Int64 get dateUpload => $_getI64(7);
  @$pb.TagNumber(8)
  set dateUpload($fixnum.Int64 value) => $_setInt64(7, value);
  @$pb.TagNumber(8)
  $core.bool hasDateUpload() => $_has(7);
  @$pb.TagNumber(8)
  void clearDateUpload() => $_clearField(8);

  /// WARNING: a default value decoded when value is missing
  @$pb.TagNumber(9)
  $core.double get chapterNumber => $_getN(8);
  @$pb.TagNumber(9)
  set chapterNumber($core.double value) => $_setFloat(8, value);
  @$pb.TagNumber(9)
  $core.bool hasChapterNumber() => $_has(8);
  @$pb.TagNumber(9)
  void clearChapterNumber() => $_clearField(9);

  /// WARNING: a default value decoded when value is missing
  @$pb.TagNumber(10)
  $fixnum.Int64 get sourceOrder => $_getI64(9);
  @$pb.TagNumber(10)
  set sourceOrder($fixnum.Int64 value) => $_setInt64(9, value);
  @$pb.TagNumber(10)
  $core.bool hasSourceOrder() => $_has(9);
  @$pb.TagNumber(10)
  void clearSourceOrder() => $_clearField(10);

  /// WARNING: a default value decoded when value is missing
  @$pb.TagNumber(11)
  $fixnum.Int64 get lastModifiedAt => $_getI64(10);
  @$pb.TagNumber(11)
  set lastModifiedAt($fixnum.Int64 value) => $_setInt64(10, value);
  @$pb.TagNumber(11)
  $core.bool hasLastModifiedAt() => $_has(10);
  @$pb.TagNumber(11)
  void clearLastModifiedAt() => $_clearField(11);
}

/// serial name 'eu.kanade.tachiyomi.data.backup.models.BackupTracking'
class BackupTracking extends $pb.GeneratedMessage {
  factory BackupTracking({
    $core.int? syncId,
    $fixnum.Int64? libraryId,
    $core.int? mediaIdInt,
    $core.String? trackingUrl,
    $core.String? title,
    $core.double? lastChapterRead,
    $core.int? totalChapters,
    $core.double? score,
    $core.int? status,
    $fixnum.Int64? startedReadingDate,
    $fixnum.Int64? finishedReadingDate,
    $fixnum.Int64? mediaId,
  }) {
    final result = create();
    if (syncId != null) result.syncId = syncId;
    if (libraryId != null) result.libraryId = libraryId;
    if (mediaIdInt != null) result.mediaIdInt = mediaIdInt;
    if (trackingUrl != null) result.trackingUrl = trackingUrl;
    if (title != null) result.title = title;
    if (lastChapterRead != null) result.lastChapterRead = lastChapterRead;
    if (totalChapters != null) result.totalChapters = totalChapters;
    if (score != null) result.score = score;
    if (status != null) result.status = status;
    if (startedReadingDate != null)
      result.startedReadingDate = startedReadingDate;
    if (finishedReadingDate != null)
      result.finishedReadingDate = finishedReadingDate;
    if (mediaId != null) result.mediaId = mediaId;
    return result;
  }

  BackupTracking._();

  factory BackupTracking.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BackupTracking.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BackupTracking',
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'syncId',
        protoName: 'syncId', fieldType: $pb.PbFieldType.Q3)
    ..a<$fixnum.Int64>(
        2, _omitFieldNames ? '' : 'libraryId', $pb.PbFieldType.Q6,
        protoName: 'libraryId', defaultOrMaker: $fixnum.Int64.ZERO)
    ..aI(3, _omitFieldNames ? '' : 'mediaIdInt', protoName: 'mediaIdInt')
    ..aOS(4, _omitFieldNames ? '' : 'trackingUrl', protoName: 'trackingUrl')
    ..aOS(5, _omitFieldNames ? '' : 'title')
    ..aD(6, _omitFieldNames ? '' : 'lastChapterRead',
        protoName: 'lastChapterRead', fieldType: $pb.PbFieldType.OF)
    ..aI(7, _omitFieldNames ? '' : 'totalChapters', protoName: 'totalChapters')
    ..aD(8, _omitFieldNames ? '' : 'score', fieldType: $pb.PbFieldType.OF)
    ..aI(9, _omitFieldNames ? '' : 'status')
    ..aInt64(10, _omitFieldNames ? '' : 'startedReadingDate',
        protoName: 'startedReadingDate')
    ..aInt64(11, _omitFieldNames ? '' : 'finishedReadingDate',
        protoName: 'finishedReadingDate')
    ..aInt64(100, _omitFieldNames ? '' : 'mediaId', protoName: 'mediaId');

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BackupTracking clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BackupTracking copyWith(void Function(BackupTracking) updates) =>
      super.copyWith((message) => updates(message as BackupTracking))
          as BackupTracking;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BackupTracking create() => BackupTracking._();
  @$core.override
  BackupTracking createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static BackupTracking getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BackupTracking>(create);
  static BackupTracking? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get syncId => $_getIZ(0);
  @$pb.TagNumber(1)
  set syncId($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSyncId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSyncId() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get libraryId => $_getI64(1);
  @$pb.TagNumber(2)
  set libraryId($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasLibraryId() => $_has(1);
  @$pb.TagNumber(2)
  void clearLibraryId() => $_clearField(2);

  /// WARNING: a default value decoded when value is missing
  @$pb.TagNumber(3)
  $core.int get mediaIdInt => $_getIZ(2);
  @$pb.TagNumber(3)
  set mediaIdInt($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasMediaIdInt() => $_has(2);
  @$pb.TagNumber(3)
  void clearMediaIdInt() => $_clearField(3);

  /// WARNING: a default value decoded when value is missing
  @$pb.TagNumber(4)
  $core.String get trackingUrl => $_getSZ(3);
  @$pb.TagNumber(4)
  set trackingUrl($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasTrackingUrl() => $_has(3);
  @$pb.TagNumber(4)
  void clearTrackingUrl() => $_clearField(4);

  /// WARNING: a default value decoded when value is missing
  @$pb.TagNumber(5)
  $core.String get title => $_getSZ(4);
  @$pb.TagNumber(5)
  set title($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasTitle() => $_has(4);
  @$pb.TagNumber(5)
  void clearTitle() => $_clearField(5);

  /// WARNING: a default value decoded when value is missing
  @$pb.TagNumber(6)
  $core.double get lastChapterRead => $_getN(5);
  @$pb.TagNumber(6)
  set lastChapterRead($core.double value) => $_setFloat(5, value);
  @$pb.TagNumber(6)
  $core.bool hasLastChapterRead() => $_has(5);
  @$pb.TagNumber(6)
  void clearLastChapterRead() => $_clearField(6);

  /// WARNING: a default value decoded when value is missing
  @$pb.TagNumber(7)
  $core.int get totalChapters => $_getIZ(6);
  @$pb.TagNumber(7)
  set totalChapters($core.int value) => $_setSignedInt32(6, value);
  @$pb.TagNumber(7)
  $core.bool hasTotalChapters() => $_has(6);
  @$pb.TagNumber(7)
  void clearTotalChapters() => $_clearField(7);

  /// WARNING: a default value decoded when value is missing
  @$pb.TagNumber(8)
  $core.double get score => $_getN(7);
  @$pb.TagNumber(8)
  set score($core.double value) => $_setFloat(7, value);
  @$pb.TagNumber(8)
  $core.bool hasScore() => $_has(7);
  @$pb.TagNumber(8)
  void clearScore() => $_clearField(8);

  /// WARNING: a default value decoded when value is missing
  @$pb.TagNumber(9)
  $core.int get status => $_getIZ(8);
  @$pb.TagNumber(9)
  set status($core.int value) => $_setSignedInt32(8, value);
  @$pb.TagNumber(9)
  $core.bool hasStatus() => $_has(8);
  @$pb.TagNumber(9)
  void clearStatus() => $_clearField(9);

  /// WARNING: a default value decoded when value is missing
  @$pb.TagNumber(10)
  $fixnum.Int64 get startedReadingDate => $_getI64(9);
  @$pb.TagNumber(10)
  set startedReadingDate($fixnum.Int64 value) => $_setInt64(9, value);
  @$pb.TagNumber(10)
  $core.bool hasStartedReadingDate() => $_has(9);
  @$pb.TagNumber(10)
  void clearStartedReadingDate() => $_clearField(10);

  /// WARNING: a default value decoded when value is missing
  @$pb.TagNumber(11)
  $fixnum.Int64 get finishedReadingDate => $_getI64(10);
  @$pb.TagNumber(11)
  set finishedReadingDate($fixnum.Int64 value) => $_setInt64(10, value);
  @$pb.TagNumber(11)
  $core.bool hasFinishedReadingDate() => $_has(10);
  @$pb.TagNumber(11)
  void clearFinishedReadingDate() => $_clearField(11);

  /// WARNING: a default value decoded when value is missing
  @$pb.TagNumber(100)
  $fixnum.Int64 get mediaId => $_getI64(11);
  @$pb.TagNumber(100)
  set mediaId($fixnum.Int64 value) => $_setInt64(11, value);
  @$pb.TagNumber(100)
  $core.bool hasMediaId() => $_has(11);
  @$pb.TagNumber(100)
  void clearMediaId() => $_clearField(100);
}

/// serial name 'eu.kanade.tachiyomi.data.backup.models.BrokenBackupHistory'
class BrokenBackupHistory extends $pb.GeneratedMessage {
  factory BrokenBackupHistory({
    $fixnum.Int64? lastRead,
    $fixnum.Int64? readDuration,
  }) {
    final result = create();
    if (lastRead != null) result.lastRead = lastRead;
    if (readDuration != null) result.readDuration = readDuration;
    return result;
  }

  BrokenBackupHistory._();

  factory BrokenBackupHistory.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BrokenBackupHistory.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BrokenBackupHistory',
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'lastRead', $pb.PbFieldType.Q6,
        protoName: 'lastRead', defaultOrMaker: $fixnum.Int64.ZERO)
    ..aInt64(2, _omitFieldNames ? '' : 'readDuration',
        protoName: 'readDuration');

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BrokenBackupHistory clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BrokenBackupHistory copyWith(void Function(BrokenBackupHistory) updates) =>
      super.copyWith((message) => updates(message as BrokenBackupHistory))
          as BrokenBackupHistory;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BrokenBackupHistory create() => BrokenBackupHistory._();
  @$core.override
  BrokenBackupHistory createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static BrokenBackupHistory getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BrokenBackupHistory>(create);
  static BrokenBackupHistory? _defaultInstance;

  /// required string url = 0;
  @$pb.TagNumber(1)
  $fixnum.Int64 get lastRead => $_getI64(0);
  @$pb.TagNumber(1)
  set lastRead($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasLastRead() => $_has(0);
  @$pb.TagNumber(1)
  void clearLastRead() => $_clearField(1);

  /// WARNING: a default value decoded when value is missing
  @$pb.TagNumber(2)
  $fixnum.Int64 get readDuration => $_getI64(1);
  @$pb.TagNumber(2)
  set readDuration($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasReadDuration() => $_has(1);
  @$pb.TagNumber(2)
  void clearReadDuration() => $_clearField(2);
}

/// serial name 'eu.kanade.tachiyomi.data.backup.models.BackupHistory'
class BackupHistory extends $pb.GeneratedMessage {
  factory BackupHistory({
    $core.String? url,
    $fixnum.Int64? lastRead,
    $fixnum.Int64? readDuration,
  }) {
    final result = create();
    if (url != null) result.url = url;
    if (lastRead != null) result.lastRead = lastRead;
    if (readDuration != null) result.readDuration = readDuration;
    return result;
  }

  BackupHistory._();

  factory BackupHistory.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BackupHistory.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BackupHistory',
      createEmptyInstance: create)
    ..aQS(1, _omitFieldNames ? '' : 'url')
    ..a<$fixnum.Int64>(2, _omitFieldNames ? '' : 'lastRead', $pb.PbFieldType.Q6,
        protoName: 'lastRead', defaultOrMaker: $fixnum.Int64.ZERO)
    ..aInt64(3, _omitFieldNames ? '' : 'readDuration',
        protoName: 'readDuration');

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BackupHistory clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BackupHistory copyWith(void Function(BackupHistory) updates) =>
      super.copyWith((message) => updates(message as BackupHistory))
          as BackupHistory;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BackupHistory create() => BackupHistory._();
  @$core.override
  BackupHistory createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static BackupHistory getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BackupHistory>(create);
  static BackupHistory? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get url => $_getSZ(0);
  @$pb.TagNumber(1)
  set url($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasUrl() => $_has(0);
  @$pb.TagNumber(1)
  void clearUrl() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get lastRead => $_getI64(1);
  @$pb.TagNumber(2)
  set lastRead($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasLastRead() => $_has(1);
  @$pb.TagNumber(2)
  void clearLastRead() => $_clearField(2);

  /// WARNING: a default value decoded when value is missing
  @$pb.TagNumber(3)
  $fixnum.Int64 get readDuration => $_getI64(2);
  @$pb.TagNumber(3)
  set readDuration($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasReadDuration() => $_has(2);
  @$pb.TagNumber(3)
  void clearReadDuration() => $_clearField(3);
}

/// serial name 'eu.kanade.tachiyomi.data.backup.models.PreferenceValue'
class PreferenceValue extends $pb.GeneratedMessage {
  factory PreferenceValue({
    $core.String? type,
    $core.List<$core.int>? value,
  }) {
    final result = create();
    if (type != null) result.type = type;
    if (value != null) result.value = value;
    return result;
  }

  PreferenceValue._();

  factory PreferenceValue.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PreferenceValue.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PreferenceValue',
      createEmptyInstance: create)
    ..aQS(1, _omitFieldNames ? '' : 'type')
    ..a<$core.List<$core.int>>(
        2, _omitFieldNames ? '' : 'value', $pb.PbFieldType.QY);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PreferenceValue clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PreferenceValue copyWith(void Function(PreferenceValue) updates) =>
      super.copyWith((message) => updates(message as PreferenceValue))
          as PreferenceValue;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PreferenceValue create() => PreferenceValue._();
  @$core.override
  PreferenceValue createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PreferenceValue getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PreferenceValue>(create);
  static PreferenceValue? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get type => $_getSZ(0);
  @$pb.TagNumber(1)
  set type($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => $_clearField(1);

  /// decoded as message with one of these types:
  ///   message BooleanPreferenceValue, serial name 'eu.kanade.tachiyomi.data.backup.models.BooleanPreferenceValue'
  ///   message FloatPreferenceValue, serial name 'eu.kanade.tachiyomi.data.backup.models.FloatPreferenceValue'
  ///   message IntPreferenceValue, serial name 'eu.kanade.tachiyomi.data.backup.models.IntPreferenceValue'
  ///   message LongPreferenceValue, serial name 'eu.kanade.tachiyomi.data.backup.models.LongPreferenceValue'
  ///   message StringPreferenceValue, serial name 'eu.kanade.tachiyomi.data.backup.models.StringPreferenceValue'
  ///   message StringSetPreferenceValue, serial name 'eu.kanade.tachiyomi.data.backup.models.StringSetPreferenceValue'
  @$pb.TagNumber(2)
  $core.List<$core.int> get value => $_getN(1);
  @$pb.TagNumber(2)
  set value($core.List<$core.int> value) => $_setBytes(1, value);
  @$pb.TagNumber(2)
  $core.bool hasValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearValue() => $_clearField(2);
}

/// serial name 'eu.kanade.tachiyomi.data.backup.models.BooleanPreferenceValue'
class BooleanPreferenceValue extends $pb.GeneratedMessage {
  factory BooleanPreferenceValue({
    $core.bool? value,
  }) {
    final result = create();
    if (value != null) result.value = value;
    return result;
  }

  BooleanPreferenceValue._();

  factory BooleanPreferenceValue.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BooleanPreferenceValue.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BooleanPreferenceValue',
      createEmptyInstance: create)
    ..a<$core.bool>(1, _omitFieldNames ? '' : 'value', $pb.PbFieldType.QB);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BooleanPreferenceValue clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BooleanPreferenceValue copyWith(
          void Function(BooleanPreferenceValue) updates) =>
      super.copyWith((message) => updates(message as BooleanPreferenceValue))
          as BooleanPreferenceValue;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BooleanPreferenceValue create() => BooleanPreferenceValue._();
  @$core.override
  BooleanPreferenceValue createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static BooleanPreferenceValue getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BooleanPreferenceValue>(create);
  static BooleanPreferenceValue? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get value => $_getBF(0);
  @$pb.TagNumber(1)
  set value($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => $_clearField(1);
}

/// serial name 'eu.kanade.tachiyomi.data.backup.models.FloatPreferenceValue'
class FloatPreferenceValue extends $pb.GeneratedMessage {
  factory FloatPreferenceValue({
    $core.double? value,
  }) {
    final result = create();
    if (value != null) result.value = value;
    return result;
  }

  FloatPreferenceValue._();

  factory FloatPreferenceValue.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FloatPreferenceValue.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FloatPreferenceValue',
      createEmptyInstance: create)
    ..aD(1, _omitFieldNames ? '' : 'value', fieldType: $pb.PbFieldType.QF);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FloatPreferenceValue clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FloatPreferenceValue copyWith(void Function(FloatPreferenceValue) updates) =>
      super.copyWith((message) => updates(message as FloatPreferenceValue))
          as FloatPreferenceValue;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FloatPreferenceValue create() => FloatPreferenceValue._();
  @$core.override
  FloatPreferenceValue createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static FloatPreferenceValue getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FloatPreferenceValue>(create);
  static FloatPreferenceValue? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get value => $_getN(0);
  @$pb.TagNumber(1)
  set value($core.double value) => $_setFloat(0, value);
  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => $_clearField(1);
}

/// serial name 'eu.kanade.tachiyomi.data.backup.models.IntPreferenceValue'
class IntPreferenceValue extends $pb.GeneratedMessage {
  factory IntPreferenceValue({
    $core.int? value,
  }) {
    final result = create();
    if (value != null) result.value = value;
    return result;
  }

  IntPreferenceValue._();

  factory IntPreferenceValue.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory IntPreferenceValue.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'IntPreferenceValue',
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'value', fieldType: $pb.PbFieldType.Q3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  IntPreferenceValue clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  IntPreferenceValue copyWith(void Function(IntPreferenceValue) updates) =>
      super.copyWith((message) => updates(message as IntPreferenceValue))
          as IntPreferenceValue;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static IntPreferenceValue create() => IntPreferenceValue._();
  @$core.override
  IntPreferenceValue createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static IntPreferenceValue getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<IntPreferenceValue>(create);
  static IntPreferenceValue? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get value => $_getIZ(0);
  @$pb.TagNumber(1)
  set value($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => $_clearField(1);
}

/// serial name 'eu.kanade.tachiyomi.data.backup.models.LongPreferenceValue'
class LongPreferenceValue extends $pb.GeneratedMessage {
  factory LongPreferenceValue({
    $fixnum.Int64? value,
  }) {
    final result = create();
    if (value != null) result.value = value;
    return result;
  }

  LongPreferenceValue._();

  factory LongPreferenceValue.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory LongPreferenceValue.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'LongPreferenceValue',
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'value', $pb.PbFieldType.Q6,
        defaultOrMaker: $fixnum.Int64.ZERO);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LongPreferenceValue clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LongPreferenceValue copyWith(void Function(LongPreferenceValue) updates) =>
      super.copyWith((message) => updates(message as LongPreferenceValue))
          as LongPreferenceValue;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LongPreferenceValue create() => LongPreferenceValue._();
  @$core.override
  LongPreferenceValue createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static LongPreferenceValue getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<LongPreferenceValue>(create);
  static LongPreferenceValue? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get value => $_getI64(0);
  @$pb.TagNumber(1)
  set value($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => $_clearField(1);
}

/// serial name 'eu.kanade.tachiyomi.data.backup.models.StringPreferenceValue'
class StringPreferenceValue extends $pb.GeneratedMessage {
  factory StringPreferenceValue({
    $core.String? value,
  }) {
    final result = create();
    if (value != null) result.value = value;
    return result;
  }

  StringPreferenceValue._();

  factory StringPreferenceValue.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StringPreferenceValue.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StringPreferenceValue',
      createEmptyInstance: create)
    ..aQS(1, _omitFieldNames ? '' : 'value');

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StringPreferenceValue clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StringPreferenceValue copyWith(
          void Function(StringPreferenceValue) updates) =>
      super.copyWith((message) => updates(message as StringPreferenceValue))
          as StringPreferenceValue;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StringPreferenceValue create() => StringPreferenceValue._();
  @$core.override
  StringPreferenceValue createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StringPreferenceValue getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StringPreferenceValue>(create);
  static StringPreferenceValue? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get value => $_getSZ(0);
  @$pb.TagNumber(1)
  set value($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => $_clearField(1);
}

/// serial name 'eu.kanade.tachiyomi.data.backup.models.StringSetPreferenceValue'
class StringSetPreferenceValue extends $pb.GeneratedMessage {
  factory StringSetPreferenceValue({
    $core.Iterable<$core.String>? value,
  }) {
    final result = create();
    if (value != null) result.value.addAll(value);
    return result;
  }

  StringSetPreferenceValue._();

  factory StringSetPreferenceValue.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StringSetPreferenceValue.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StringSetPreferenceValue',
      createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'value')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StringSetPreferenceValue clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StringSetPreferenceValue copyWith(
          void Function(StringSetPreferenceValue) updates) =>
      super.copyWith((message) => updates(message as StringSetPreferenceValue))
          as StringSetPreferenceValue;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StringSetPreferenceValue create() => StringSetPreferenceValue._();
  @$core.override
  StringSetPreferenceValue createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StringSetPreferenceValue getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StringSetPreferenceValue>(create);
  static StringSetPreferenceValue? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$core.String> get value => $_getList(0);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
