// dart format width=80
// ignore_for_file: type=lint
import 'package:drift/drift.dart' as i0;
import 'package:flutter_manga_reader/core/sources/drift_datasource/tables/reading_direction.drift.dart'
    as i1;
import 'package:flutter_manga_reader/core/models/reading_direction.dart' as i2;
import 'package:flutter_manga_reader/core/sources/drift_datasource/tables/reading_direction.dart'
    as i3;

class $DbReadingDirectionTable extends i3.DbReadingDirection
    with i0.TableInfo<$DbReadingDirectionTable, i1.DbReadingDirectionData> {
  @override
  final i0.GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DbReadingDirectionTable(this.attachedDatabase, [this._alias]);
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
  @override
  late final i0.GeneratedColumnWithTypeConverter<i2.ReadingDirection, int>
  direction =
      i0.GeneratedColumn<int>(
        'direction',
        aliasedName,
        false,
        type: i0.DriftSqlType.int,
        requiredDuringInsert: true,
      ).withConverter<i2.ReadingDirection>(
        i1.$DbReadingDirectionTable.$converterdirection,
      );
  @override
  List<i0.GeneratedColumn> get $columns => [mangaId, direction];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'db_reading_direction';
  @override
  i0.VerificationContext validateIntegrity(
    i0.Insertable<i1.DbReadingDirectionData> instance, {
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
    return context;
  }

  @override
  Set<i0.GeneratedColumn> get $primaryKey => {mangaId};
  @override
  i1.DbReadingDirectionData map(
    Map<String, dynamic> data, {
    String? tablePrefix,
  }) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return i1.DbReadingDirectionData(
      mangaId: attachedDatabase.typeMapping.read(
        i0.DriftSqlType.int,
        data['${effectivePrefix}manga_id'],
      )!,
      direction: i1.$DbReadingDirectionTable.$converterdirection.fromSql(
        attachedDatabase.typeMapping.read(
          i0.DriftSqlType.int,
          data['${effectivePrefix}direction'],
        )!,
      ),
    );
  }

  @override
  $DbReadingDirectionTable createAlias(String alias) {
    return $DbReadingDirectionTable(attachedDatabase, alias);
  }

  static i0.JsonTypeConverter2<i2.ReadingDirection, int, int>
  $converterdirection = const i0.EnumIndexConverter<i2.ReadingDirection>(
    i2.ReadingDirection.values,
  );
}

class DbReadingDirectionData extends i0.DataClass
    implements i0.Insertable<i1.DbReadingDirectionData> {
  final int mangaId;
  final i2.ReadingDirection direction;
  const DbReadingDirectionData({
    required this.mangaId,
    required this.direction,
  });
  @override
  Map<String, i0.Expression> toColumns(bool nullToAbsent) {
    final map = <String, i0.Expression>{};
    map['manga_id'] = i0.Variable<int>(mangaId);
    {
      map['direction'] = i0.Variable<int>(
        i1.$DbReadingDirectionTable.$converterdirection.toSql(direction),
      );
    }
    return map;
  }

  factory DbReadingDirectionData.fromJson(
    Map<String, dynamic> json, {
    i0.ValueSerializer? serializer,
  }) {
    serializer ??= i0.driftRuntimeOptions.defaultSerializer;
    return DbReadingDirectionData(
      mangaId: serializer.fromJson<int>(json['mangaId']),
      direction: i1.$DbReadingDirectionTable.$converterdirection.fromJson(
        serializer.fromJson<int>(json['direction']),
      ),
    );
  }
  @override
  Map<String, dynamic> toJson({i0.ValueSerializer? serializer}) {
    serializer ??= i0.driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'mangaId': serializer.toJson<int>(mangaId),
      'direction': serializer.toJson<int>(
        i1.$DbReadingDirectionTable.$converterdirection.toJson(direction),
      ),
    };
  }

  i1.DbReadingDirectionData copyWith({
    int? mangaId,
    i2.ReadingDirection? direction,
  }) => i1.DbReadingDirectionData(
    mangaId: mangaId ?? this.mangaId,
    direction: direction ?? this.direction,
  );
  DbReadingDirectionData copyWithCompanion(
    i1.DbReadingDirectionCompanion data,
  ) {
    return DbReadingDirectionData(
      mangaId: data.mangaId.present ? data.mangaId.value : this.mangaId,
      direction: data.direction.present ? data.direction.value : this.direction,
    );
  }

  @override
  String toString() {
    return (StringBuffer('DbReadingDirectionData(')
          ..write('mangaId: $mangaId, ')
          ..write('direction: $direction')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(mangaId, direction);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is i1.DbReadingDirectionData &&
          other.mangaId == this.mangaId &&
          other.direction == this.direction);
}

class DbReadingDirectionCompanion
    extends i0.UpdateCompanion<i1.DbReadingDirectionData> {
  final i0.Value<int> mangaId;
  final i0.Value<i2.ReadingDirection> direction;
  const DbReadingDirectionCompanion({
    this.mangaId = const i0.Value.absent(),
    this.direction = const i0.Value.absent(),
  });
  DbReadingDirectionCompanion.insert({
    this.mangaId = const i0.Value.absent(),
    required i2.ReadingDirection direction,
  }) : direction = i0.Value(direction);
  static i0.Insertable<i1.DbReadingDirectionData> custom({
    i0.Expression<int>? mangaId,
    i0.Expression<int>? direction,
  }) {
    return i0.RawValuesInsertable({
      if (mangaId != null) 'manga_id': mangaId,
      if (direction != null) 'direction': direction,
    });
  }

  i1.DbReadingDirectionCompanion copyWith({
    i0.Value<int>? mangaId,
    i0.Value<i2.ReadingDirection>? direction,
  }) {
    return i1.DbReadingDirectionCompanion(
      mangaId: mangaId ?? this.mangaId,
      direction: direction ?? this.direction,
    );
  }

  @override
  Map<String, i0.Expression> toColumns(bool nullToAbsent) {
    final map = <String, i0.Expression>{};
    if (mangaId.present) {
      map['manga_id'] = i0.Variable<int>(mangaId.value);
    }
    if (direction.present) {
      map['direction'] = i0.Variable<int>(
        i1.$DbReadingDirectionTable.$converterdirection.toSql(direction.value),
      );
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DbReadingDirectionCompanion(')
          ..write('mangaId: $mangaId, ')
          ..write('direction: $direction')
          ..write(')'))
        .toString();
  }
}
