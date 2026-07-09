// dart format width=80
// ignore_for_file: type=lint
import 'package:drift/drift.dart' as i0;
import 'package:flutter_manga_reader/core/sources/drift_datasource/tables/cache_entries.drift.dart'
    as i1;
import 'package:flutter_manga_reader/core/sources/drift_datasource/tables/cache_entries.dart'
    as i2;

class $DbCacheEntriesTable extends i2.DbCacheEntries
    with i0.TableInfo<$DbCacheEntriesTable, i1.DbCacheEntry> {
  @override
  final i0.GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DbCacheEntriesTable(this.attachedDatabase, [this._alias]);
  static const i0.VerificationMeta _keyMeta = const i0.VerificationMeta('key');
  @override
  late final i0.GeneratedColumn<String> key = i0.GeneratedColumn<String>(
    'key',
    aliasedName,
    false,
    type: i0.DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const i0.VerificationMeta _responseMeta = const i0.VerificationMeta(
    'response',
  );
  @override
  late final i0.GeneratedColumn<String> response = i0.GeneratedColumn<String>(
    'response',
    aliasedName,
    false,
    type: i0.DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const i0.VerificationMeta _expiryMeta = const i0.VerificationMeta(
    'expiry',
  );
  @override
  late final i0.GeneratedColumn<DateTime> expiry = i0.GeneratedColumn<DateTime>(
    'expiry',
    aliasedName,
    false,
    type: i0.DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  @override
  List<i0.GeneratedColumn> get $columns => [key, response, expiry];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'db_cache_entries';
  @override
  i0.VerificationContext validateIntegrity(
    i0.Insertable<i1.DbCacheEntry> instance, {
    bool isInserting = false,
  }) {
    final context = i0.VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('key')) {
      context.handle(
        _keyMeta,
        key.isAcceptableOrUnknown(data['key']!, _keyMeta),
      );
    } else if (isInserting) {
      context.missing(_keyMeta);
    }
    if (data.containsKey('response')) {
      context.handle(
        _responseMeta,
        response.isAcceptableOrUnknown(data['response']!, _responseMeta),
      );
    } else if (isInserting) {
      context.missing(_responseMeta);
    }
    if (data.containsKey('expiry')) {
      context.handle(
        _expiryMeta,
        expiry.isAcceptableOrUnknown(data['expiry']!, _expiryMeta),
      );
    } else if (isInserting) {
      context.missing(_expiryMeta);
    }
    return context;
  }

  @override
  Set<i0.GeneratedColumn> get $primaryKey => {key};
  @override
  i1.DbCacheEntry map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return i1.DbCacheEntry(
      key: attachedDatabase.typeMapping.read(
        i0.DriftSqlType.string,
        data['${effectivePrefix}key'],
      )!,
      response: attachedDatabase.typeMapping.read(
        i0.DriftSqlType.string,
        data['${effectivePrefix}response'],
      )!,
      expiry: attachedDatabase.typeMapping.read(
        i0.DriftSqlType.dateTime,
        data['${effectivePrefix}expiry'],
      )!,
    );
  }

  @override
  $DbCacheEntriesTable createAlias(String alias) {
    return $DbCacheEntriesTable(attachedDatabase, alias);
  }
}

class DbCacheEntry extends i0.DataClass
    implements i0.Insertable<i1.DbCacheEntry> {
  final String key;
  final String response;
  final DateTime expiry;
  const DbCacheEntry({
    required this.key,
    required this.response,
    required this.expiry,
  });
  @override
  Map<String, i0.Expression> toColumns(bool nullToAbsent) {
    final map = <String, i0.Expression>{};
    map['key'] = i0.Variable<String>(key);
    map['response'] = i0.Variable<String>(response);
    map['expiry'] = i0.Variable<DateTime>(expiry);
    return map;
  }

  factory DbCacheEntry.fromJson(
    Map<String, dynamic> json, {
    i0.ValueSerializer? serializer,
  }) {
    serializer ??= i0.driftRuntimeOptions.defaultSerializer;
    return DbCacheEntry(
      key: serializer.fromJson<String>(json['key']),
      response: serializer.fromJson<String>(json['response']),
      expiry: serializer.fromJson<DateTime>(json['expiry']),
    );
  }
  @override
  Map<String, dynamic> toJson({i0.ValueSerializer? serializer}) {
    serializer ??= i0.driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'key': serializer.toJson<String>(key),
      'response': serializer.toJson<String>(response),
      'expiry': serializer.toJson<DateTime>(expiry),
    };
  }

  i1.DbCacheEntry copyWith({String? key, String? response, DateTime? expiry}) =>
      i1.DbCacheEntry(
        key: key ?? this.key,
        response: response ?? this.response,
        expiry: expiry ?? this.expiry,
      );
  DbCacheEntry copyWithCompanion(i1.DbCacheEntriesCompanion data) {
    return DbCacheEntry(
      key: data.key.present ? data.key.value : this.key,
      response: data.response.present ? data.response.value : this.response,
      expiry: data.expiry.present ? data.expiry.value : this.expiry,
    );
  }

  @override
  String toString() {
    return (StringBuffer('DbCacheEntry(')
          ..write('key: $key, ')
          ..write('response: $response, ')
          ..write('expiry: $expiry')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(key, response, expiry);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is i1.DbCacheEntry &&
          other.key == this.key &&
          other.response == this.response &&
          other.expiry == this.expiry);
}

class DbCacheEntriesCompanion extends i0.UpdateCompanion<i1.DbCacheEntry> {
  final i0.Value<String> key;
  final i0.Value<String> response;
  final i0.Value<DateTime> expiry;
  final i0.Value<int> rowid;
  const DbCacheEntriesCompanion({
    this.key = const i0.Value.absent(),
    this.response = const i0.Value.absent(),
    this.expiry = const i0.Value.absent(),
    this.rowid = const i0.Value.absent(),
  });
  DbCacheEntriesCompanion.insert({
    required String key,
    required String response,
    required DateTime expiry,
    this.rowid = const i0.Value.absent(),
  }) : key = i0.Value(key),
       response = i0.Value(response),
       expiry = i0.Value(expiry);
  static i0.Insertable<i1.DbCacheEntry> custom({
    i0.Expression<String>? key,
    i0.Expression<String>? response,
    i0.Expression<DateTime>? expiry,
    i0.Expression<int>? rowid,
  }) {
    return i0.RawValuesInsertable({
      if (key != null) 'key': key,
      if (response != null) 'response': response,
      if (expiry != null) 'expiry': expiry,
      if (rowid != null) 'rowid': rowid,
    });
  }

  i1.DbCacheEntriesCompanion copyWith({
    i0.Value<String>? key,
    i0.Value<String>? response,
    i0.Value<DateTime>? expiry,
    i0.Value<int>? rowid,
  }) {
    return i1.DbCacheEntriesCompanion(
      key: key ?? this.key,
      response: response ?? this.response,
      expiry: expiry ?? this.expiry,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, i0.Expression> toColumns(bool nullToAbsent) {
    final map = <String, i0.Expression>{};
    if (key.present) {
      map['key'] = i0.Variable<String>(key.value);
    }
    if (response.present) {
      map['response'] = i0.Variable<String>(response.value);
    }
    if (expiry.present) {
      map['expiry'] = i0.Variable<DateTime>(expiry.value);
    }
    if (rowid.present) {
      map['rowid'] = i0.Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DbCacheEntriesCompanion(')
          ..write('key: $key, ')
          ..write('response: $response, ')
          ..write('expiry: $expiry, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}
