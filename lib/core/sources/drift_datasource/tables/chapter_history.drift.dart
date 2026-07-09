// dart format width=80
// ignore_for_file: type=lint
import 'package:drift/drift.dart' as i0;
import 'package:flutter_manga_reader/core/sources/drift_datasource/tables/chapter_history.drift.dart'
    as i1;
import 'package:flutter_manga_reader/core/sources/drift_datasource/tables/chapter_history.dart'
    as i2;

i0.Index get chapterHistoryReadAt => i0.Index(
  'chapter_history_read_at',
  'CREATE INDEX chapter_history_read_at ON db_chapter_history (read_at)',
);

class $DbChapterHistoryTable extends i2.DbChapterHistory
    with i0.TableInfo<$DbChapterHistoryTable, i1.DbChapterHistoryData> {
  @override
  final i0.GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DbChapterHistoryTable(this.attachedDatabase, [this._alias]);
  static const i0.VerificationMeta _mangaIdMeta = const i0.VerificationMeta(
    'mangaId',
  );
  @override
  late final i0.GeneratedColumn<int> mangaId = i0.GeneratedColumn<int>(
    'manga_id',
    aliasedName,
    false,
    type: i0.DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: i0.GeneratedColumn.constraintIsAlways(
      'REFERENCES db_mangas (id) ON DELETE CASCADE',
    ),
  );
  static const i0.VerificationMeta _chapterIdMeta = const i0.VerificationMeta(
    'chapterId',
  );
  @override
  late final i0.GeneratedColumn<int> chapterId = i0.GeneratedColumn<int>(
    'chapter_id',
    aliasedName,
    false,
    type: i0.DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: i0.GeneratedColumn.constraintIsAlways(
      'REFERENCES db_chapters (id) ON DELETE CASCADE',
    ),
  );
  static const i0.VerificationMeta _readAtMeta = const i0.VerificationMeta(
    'readAt',
  );
  @override
  late final i0.GeneratedColumn<DateTime> readAt = i0.GeneratedColumn<DateTime>(
    'read_at',
    aliasedName,
    false,
    type: i0.DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  @override
  List<i0.GeneratedColumn> get $columns => [mangaId, chapterId, readAt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'db_chapter_history';
  @override
  i0.VerificationContext validateIntegrity(
    i0.Insertable<i1.DbChapterHistoryData> instance, {
    bool isInserting = false,
  }) {
    final context = i0.VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('manga_id')) {
      context.handle(
        _mangaIdMeta,
        mangaId.isAcceptableOrUnknown(data['manga_id']!, _mangaIdMeta),
      );
    }
    if (data.containsKey('chapter_id')) {
      context.handle(
        _chapterIdMeta,
        chapterId.isAcceptableOrUnknown(data['chapter_id']!, _chapterIdMeta),
      );
    } else if (isInserting) {
      context.missing(_chapterIdMeta);
    }
    if (data.containsKey('read_at')) {
      context.handle(
        _readAtMeta,
        readAt.isAcceptableOrUnknown(data['read_at']!, _readAtMeta),
      );
    } else if (isInserting) {
      context.missing(_readAtMeta);
    }
    return context;
  }

  @override
  Set<i0.GeneratedColumn> get $primaryKey => {mangaId};
  @override
  i1.DbChapterHistoryData map(
    Map<String, dynamic> data, {
    String? tablePrefix,
  }) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return i1.DbChapterHistoryData(
      mangaId: attachedDatabase.typeMapping.read(
        i0.DriftSqlType.int,
        data['${effectivePrefix}manga_id'],
      )!,
      chapterId: attachedDatabase.typeMapping.read(
        i0.DriftSqlType.int,
        data['${effectivePrefix}chapter_id'],
      )!,
      readAt: attachedDatabase.typeMapping.read(
        i0.DriftSqlType.dateTime,
        data['${effectivePrefix}read_at'],
      )!,
    );
  }

  @override
  $DbChapterHistoryTable createAlias(String alias) {
    return $DbChapterHistoryTable(attachedDatabase, alias);
  }
}

class DbChapterHistoryData extends i0.DataClass
    implements i0.Insertable<i1.DbChapterHistoryData> {
  final int mangaId;
  final int chapterId;
  final DateTime readAt;
  const DbChapterHistoryData({
    required this.mangaId,
    required this.chapterId,
    required this.readAt,
  });
  @override
  Map<String, i0.Expression> toColumns(bool nullToAbsent) {
    final map = <String, i0.Expression>{};
    map['manga_id'] = i0.Variable<int>(mangaId);
    map['chapter_id'] = i0.Variable<int>(chapterId);
    map['read_at'] = i0.Variable<DateTime>(readAt);
    return map;
  }

  factory DbChapterHistoryData.fromJson(
    Map<String, dynamic> json, {
    i0.ValueSerializer? serializer,
  }) {
    serializer ??= i0.driftRuntimeOptions.defaultSerializer;
    return DbChapterHistoryData(
      mangaId: serializer.fromJson<int>(json['mangaId']),
      chapterId: serializer.fromJson<int>(json['chapterId']),
      readAt: serializer.fromJson<DateTime>(json['readAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({i0.ValueSerializer? serializer}) {
    serializer ??= i0.driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'mangaId': serializer.toJson<int>(mangaId),
      'chapterId': serializer.toJson<int>(chapterId),
      'readAt': serializer.toJson<DateTime>(readAt),
    };
  }

  i1.DbChapterHistoryData copyWith({
    int? mangaId,
    int? chapterId,
    DateTime? readAt,
  }) => i1.DbChapterHistoryData(
    mangaId: mangaId ?? this.mangaId,
    chapterId: chapterId ?? this.chapterId,
    readAt: readAt ?? this.readAt,
  );
  DbChapterHistoryData copyWithCompanion(i1.DbChapterHistoryCompanion data) {
    return DbChapterHistoryData(
      mangaId: data.mangaId.present ? data.mangaId.value : this.mangaId,
      chapterId: data.chapterId.present ? data.chapterId.value : this.chapterId,
      readAt: data.readAt.present ? data.readAt.value : this.readAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('DbChapterHistoryData(')
          ..write('mangaId: $mangaId, ')
          ..write('chapterId: $chapterId, ')
          ..write('readAt: $readAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(mangaId, chapterId, readAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is i1.DbChapterHistoryData &&
          other.mangaId == this.mangaId &&
          other.chapterId == this.chapterId &&
          other.readAt == this.readAt);
}

class DbChapterHistoryCompanion
    extends i0.UpdateCompanion<i1.DbChapterHistoryData> {
  final i0.Value<int> mangaId;
  final i0.Value<int> chapterId;
  final i0.Value<DateTime> readAt;
  const DbChapterHistoryCompanion({
    this.mangaId = const i0.Value.absent(),
    this.chapterId = const i0.Value.absent(),
    this.readAt = const i0.Value.absent(),
  });
  DbChapterHistoryCompanion.insert({
    this.mangaId = const i0.Value.absent(),
    required int chapterId,
    required DateTime readAt,
  }) : chapterId = i0.Value(chapterId),
       readAt = i0.Value(readAt);
  static i0.Insertable<i1.DbChapterHistoryData> custom({
    i0.Expression<int>? mangaId,
    i0.Expression<int>? chapterId,
    i0.Expression<DateTime>? readAt,
  }) {
    return i0.RawValuesInsertable({
      if (mangaId != null) 'manga_id': mangaId,
      if (chapterId != null) 'chapter_id': chapterId,
      if (readAt != null) 'read_at': readAt,
    });
  }

  i1.DbChapterHistoryCompanion copyWith({
    i0.Value<int>? mangaId,
    i0.Value<int>? chapterId,
    i0.Value<DateTime>? readAt,
  }) {
    return i1.DbChapterHistoryCompanion(
      mangaId: mangaId ?? this.mangaId,
      chapterId: chapterId ?? this.chapterId,
      readAt: readAt ?? this.readAt,
    );
  }

  @override
  Map<String, i0.Expression> toColumns(bool nullToAbsent) {
    final map = <String, i0.Expression>{};
    if (mangaId.present) {
      map['manga_id'] = i0.Variable<int>(mangaId.value);
    }
    if (chapterId.present) {
      map['chapter_id'] = i0.Variable<int>(chapterId.value);
    }
    if (readAt.present) {
      map['read_at'] = i0.Variable<DateTime>(readAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DbChapterHistoryCompanion(')
          ..write('mangaId: $mangaId, ')
          ..write('chapterId: $chapterId, ')
          ..write('readAt: $readAt')
          ..write(')'))
        .toString();
  }
}
