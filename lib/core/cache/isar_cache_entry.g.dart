// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'isar_cache_entry.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetIsarCacheEntryCollection on Isar {
  IsarCollection<IsarCacheEntry> get isarCacheEntrys => this.collection();
}

const IsarCacheEntrySchema = CollectionSchema(
  name: r'IsarCacheEntry',
  id: 8600307826999671986,
  properties: {
    r'expiry': PropertySchema(
      id: 0,
      name: r'expiry',
      type: IsarType.dateTime,
    ),
    r'isValid': PropertySchema(
      id: 1,
      name: r'isValid',
      type: IsarType.bool,
    ),
    r'isarKey': PropertySchema(
      id: 2,
      name: r'isarKey',
      type: IsarType.string,
    ),
    r'key': PropertySchema(
      id: 3,
      name: r'key',
      type: IsarType.string,
    ),
    r'response': PropertySchema(
      id: 4,
      name: r'response',
      type: IsarType.string,
    ),
    r'value': PropertySchema(
      id: 5,
      name: r'value',
      type: IsarType.string,
    )
  },
  estimateSize: _isarCacheEntryEstimateSize,
  serialize: _isarCacheEntrySerialize,
  deserialize: _isarCacheEntryDeserialize,
  deserializeProp: _isarCacheEntryDeserializeProp,
  idName: r'id',
  indexes: {
    r'isarKey': IndexSchema(
      id: 2319038853931673769,
      name: r'isarKey',
      unique: true,
      replace: true,
      properties: [
        IndexPropertySchema(
          name: r'isarKey',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _isarCacheEntryGetId,
  getLinks: _isarCacheEntryGetLinks,
  attach: _isarCacheEntryAttach,
  version: '3.1.0+1',
);

int _isarCacheEntryEstimateSize(
  IsarCacheEntry object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.isarKey.length * 3;
  bytesCount += 3 + object.key.length * 3;
  bytesCount += 3 + object.response.length * 3;
  bytesCount += 3 + object.value.length * 3;
  return bytesCount;
}

void _isarCacheEntrySerialize(
  IsarCacheEntry object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDateTime(offsets[0], object.expiry);
  writer.writeBool(offsets[1], object.isValid);
  writer.writeString(offsets[2], object.isarKey);
  writer.writeString(offsets[3], object.key);
  writer.writeString(offsets[4], object.response);
  writer.writeString(offsets[5], object.value);
}

IsarCacheEntry _isarCacheEntryDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = IsarCacheEntry(
    expiry: reader.readDateTime(offsets[0]),
    isarKey: reader.readString(offsets[2]),
    response: reader.readString(offsets[4]),
  );
  object.id = id;
  return object;
}

P _isarCacheEntryDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDateTime(offset)) as P;
    case 1:
      return (reader.readBool(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    case 5:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _isarCacheEntryGetId(IsarCacheEntry object) {
  return object.id ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _isarCacheEntryGetLinks(IsarCacheEntry object) {
  return [];
}

void _isarCacheEntryAttach(
    IsarCollection<dynamic> col, Id id, IsarCacheEntry object) {
  object.id = id;
}

extension IsarCacheEntryByIndex on IsarCollection<IsarCacheEntry> {
  Future<IsarCacheEntry?> getByIsarKey(String isarKey) {
    return getByIndex(r'isarKey', [isarKey]);
  }

  IsarCacheEntry? getByIsarKeySync(String isarKey) {
    return getByIndexSync(r'isarKey', [isarKey]);
  }

  Future<bool> deleteByIsarKey(String isarKey) {
    return deleteByIndex(r'isarKey', [isarKey]);
  }

  bool deleteByIsarKeySync(String isarKey) {
    return deleteByIndexSync(r'isarKey', [isarKey]);
  }

  Future<List<IsarCacheEntry?>> getAllByIsarKey(List<String> isarKeyValues) {
    final values = isarKeyValues.map((e) => [e]).toList();
    return getAllByIndex(r'isarKey', values);
  }

  List<IsarCacheEntry?> getAllByIsarKeySync(List<String> isarKeyValues) {
    final values = isarKeyValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'isarKey', values);
  }

  Future<int> deleteAllByIsarKey(List<String> isarKeyValues) {
    final values = isarKeyValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'isarKey', values);
  }

  int deleteAllByIsarKeySync(List<String> isarKeyValues) {
    final values = isarKeyValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'isarKey', values);
  }

  Future<Id> putByIsarKey(IsarCacheEntry object) {
    return putByIndex(r'isarKey', object);
  }

  Id putByIsarKeySync(IsarCacheEntry object, {bool saveLinks = true}) {
    return putByIndexSync(r'isarKey', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByIsarKey(List<IsarCacheEntry> objects) {
    return putAllByIndex(r'isarKey', objects);
  }

  List<Id> putAllByIsarKeySync(List<IsarCacheEntry> objects,
      {bool saveLinks = true}) {
    return putAllByIndexSync(r'isarKey', objects, saveLinks: saveLinks);
  }
}

extension IsarCacheEntryQueryWhereSort
    on QueryBuilder<IsarCacheEntry, IsarCacheEntry, QWhere> {
  QueryBuilder<IsarCacheEntry, IsarCacheEntry, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension IsarCacheEntryQueryWhere
    on QueryBuilder<IsarCacheEntry, IsarCacheEntry, QWhereClause> {
  QueryBuilder<IsarCacheEntry, IsarCacheEntry, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<IsarCacheEntry, IsarCacheEntry, QAfterWhereClause> idNotEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<IsarCacheEntry, IsarCacheEntry, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<IsarCacheEntry, IsarCacheEntry, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<IsarCacheEntry, IsarCacheEntry, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<IsarCacheEntry, IsarCacheEntry, QAfterWhereClause>
      isarKeyEqualTo(String isarKey) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'isarKey',
        value: [isarKey],
      ));
    });
  }

  QueryBuilder<IsarCacheEntry, IsarCacheEntry, QAfterWhereClause>
      isarKeyNotEqualTo(String isarKey) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'isarKey',
              lower: [],
              upper: [isarKey],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'isarKey',
              lower: [isarKey],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'isarKey',
              lower: [isarKey],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'isarKey',
              lower: [],
              upper: [isarKey],
              includeUpper: false,
            ));
      }
    });
  }
}

extension IsarCacheEntryQueryFilter
    on QueryBuilder<IsarCacheEntry, IsarCacheEntry, QFilterCondition> {
  QueryBuilder<IsarCacheEntry, IsarCacheEntry, QAfterFilterCondition>
      expiryEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'expiry',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarCacheEntry, IsarCacheEntry, QAfterFilterCondition>
      expiryGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'expiry',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarCacheEntry, IsarCacheEntry, QAfterFilterCondition>
      expiryLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'expiry',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarCacheEntry, IsarCacheEntry, QAfterFilterCondition>
      expiryBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'expiry',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<IsarCacheEntry, IsarCacheEntry, QAfterFilterCondition>
      idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<IsarCacheEntry, IsarCacheEntry, QAfterFilterCondition>
      idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<IsarCacheEntry, IsarCacheEntry, QAfterFilterCondition> idEqualTo(
      Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarCacheEntry, IsarCacheEntry, QAfterFilterCondition>
      idGreaterThan(
    Id? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarCacheEntry, IsarCacheEntry, QAfterFilterCondition>
      idLessThan(
    Id? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarCacheEntry, IsarCacheEntry, QAfterFilterCondition> idBetween(
    Id? lower,
    Id? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<IsarCacheEntry, IsarCacheEntry, QAfterFilterCondition>
      isValidEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isValid',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarCacheEntry, IsarCacheEntry, QAfterFilterCondition>
      isarKeyEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isarKey',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarCacheEntry, IsarCacheEntry, QAfterFilterCondition>
      isarKeyGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'isarKey',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarCacheEntry, IsarCacheEntry, QAfterFilterCondition>
      isarKeyLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'isarKey',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarCacheEntry, IsarCacheEntry, QAfterFilterCondition>
      isarKeyBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'isarKey',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarCacheEntry, IsarCacheEntry, QAfterFilterCondition>
      isarKeyStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'isarKey',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarCacheEntry, IsarCacheEntry, QAfterFilterCondition>
      isarKeyEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'isarKey',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarCacheEntry, IsarCacheEntry, QAfterFilterCondition>
      isarKeyContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'isarKey',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarCacheEntry, IsarCacheEntry, QAfterFilterCondition>
      isarKeyMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'isarKey',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarCacheEntry, IsarCacheEntry, QAfterFilterCondition>
      isarKeyIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isarKey',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarCacheEntry, IsarCacheEntry, QAfterFilterCondition>
      isarKeyIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'isarKey',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarCacheEntry, IsarCacheEntry, QAfterFilterCondition>
      keyEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'key',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarCacheEntry, IsarCacheEntry, QAfterFilterCondition>
      keyGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'key',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarCacheEntry, IsarCacheEntry, QAfterFilterCondition>
      keyLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'key',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarCacheEntry, IsarCacheEntry, QAfterFilterCondition>
      keyBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'key',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarCacheEntry, IsarCacheEntry, QAfterFilterCondition>
      keyStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'key',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarCacheEntry, IsarCacheEntry, QAfterFilterCondition>
      keyEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'key',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarCacheEntry, IsarCacheEntry, QAfterFilterCondition>
      keyContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'key',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarCacheEntry, IsarCacheEntry, QAfterFilterCondition>
      keyMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'key',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarCacheEntry, IsarCacheEntry, QAfterFilterCondition>
      keyIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'key',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarCacheEntry, IsarCacheEntry, QAfterFilterCondition>
      keyIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'key',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarCacheEntry, IsarCacheEntry, QAfterFilterCondition>
      responseEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'response',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarCacheEntry, IsarCacheEntry, QAfterFilterCondition>
      responseGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'response',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarCacheEntry, IsarCacheEntry, QAfterFilterCondition>
      responseLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'response',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarCacheEntry, IsarCacheEntry, QAfterFilterCondition>
      responseBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'response',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarCacheEntry, IsarCacheEntry, QAfterFilterCondition>
      responseStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'response',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarCacheEntry, IsarCacheEntry, QAfterFilterCondition>
      responseEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'response',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarCacheEntry, IsarCacheEntry, QAfterFilterCondition>
      responseContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'response',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarCacheEntry, IsarCacheEntry, QAfterFilterCondition>
      responseMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'response',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarCacheEntry, IsarCacheEntry, QAfterFilterCondition>
      responseIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'response',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarCacheEntry, IsarCacheEntry, QAfterFilterCondition>
      responseIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'response',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarCacheEntry, IsarCacheEntry, QAfterFilterCondition>
      valueEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'value',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarCacheEntry, IsarCacheEntry, QAfterFilterCondition>
      valueGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'value',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarCacheEntry, IsarCacheEntry, QAfterFilterCondition>
      valueLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'value',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarCacheEntry, IsarCacheEntry, QAfterFilterCondition>
      valueBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'value',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarCacheEntry, IsarCacheEntry, QAfterFilterCondition>
      valueStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'value',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarCacheEntry, IsarCacheEntry, QAfterFilterCondition>
      valueEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'value',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarCacheEntry, IsarCacheEntry, QAfterFilterCondition>
      valueContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'value',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarCacheEntry, IsarCacheEntry, QAfterFilterCondition>
      valueMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'value',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarCacheEntry, IsarCacheEntry, QAfterFilterCondition>
      valueIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'value',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarCacheEntry, IsarCacheEntry, QAfterFilterCondition>
      valueIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'value',
        value: '',
      ));
    });
  }
}

extension IsarCacheEntryQueryObject
    on QueryBuilder<IsarCacheEntry, IsarCacheEntry, QFilterCondition> {}

extension IsarCacheEntryQueryLinks
    on QueryBuilder<IsarCacheEntry, IsarCacheEntry, QFilterCondition> {}

extension IsarCacheEntryQuerySortBy
    on QueryBuilder<IsarCacheEntry, IsarCacheEntry, QSortBy> {
  QueryBuilder<IsarCacheEntry, IsarCacheEntry, QAfterSortBy> sortByExpiry() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'expiry', Sort.asc);
    });
  }

  QueryBuilder<IsarCacheEntry, IsarCacheEntry, QAfterSortBy>
      sortByExpiryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'expiry', Sort.desc);
    });
  }

  QueryBuilder<IsarCacheEntry, IsarCacheEntry, QAfterSortBy> sortByIsValid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isValid', Sort.asc);
    });
  }

  QueryBuilder<IsarCacheEntry, IsarCacheEntry, QAfterSortBy>
      sortByIsValidDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isValid', Sort.desc);
    });
  }

  QueryBuilder<IsarCacheEntry, IsarCacheEntry, QAfterSortBy> sortByIsarKey() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarKey', Sort.asc);
    });
  }

  QueryBuilder<IsarCacheEntry, IsarCacheEntry, QAfterSortBy>
      sortByIsarKeyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarKey', Sort.desc);
    });
  }

  QueryBuilder<IsarCacheEntry, IsarCacheEntry, QAfterSortBy> sortByKey() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'key', Sort.asc);
    });
  }

  QueryBuilder<IsarCacheEntry, IsarCacheEntry, QAfterSortBy> sortByKeyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'key', Sort.desc);
    });
  }

  QueryBuilder<IsarCacheEntry, IsarCacheEntry, QAfterSortBy> sortByResponse() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'response', Sort.asc);
    });
  }

  QueryBuilder<IsarCacheEntry, IsarCacheEntry, QAfterSortBy>
      sortByResponseDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'response', Sort.desc);
    });
  }

  QueryBuilder<IsarCacheEntry, IsarCacheEntry, QAfterSortBy> sortByValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'value', Sort.asc);
    });
  }

  QueryBuilder<IsarCacheEntry, IsarCacheEntry, QAfterSortBy> sortByValueDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'value', Sort.desc);
    });
  }
}

extension IsarCacheEntryQuerySortThenBy
    on QueryBuilder<IsarCacheEntry, IsarCacheEntry, QSortThenBy> {
  QueryBuilder<IsarCacheEntry, IsarCacheEntry, QAfterSortBy> thenByExpiry() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'expiry', Sort.asc);
    });
  }

  QueryBuilder<IsarCacheEntry, IsarCacheEntry, QAfterSortBy>
      thenByExpiryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'expiry', Sort.desc);
    });
  }

  QueryBuilder<IsarCacheEntry, IsarCacheEntry, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<IsarCacheEntry, IsarCacheEntry, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<IsarCacheEntry, IsarCacheEntry, QAfterSortBy> thenByIsValid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isValid', Sort.asc);
    });
  }

  QueryBuilder<IsarCacheEntry, IsarCacheEntry, QAfterSortBy>
      thenByIsValidDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isValid', Sort.desc);
    });
  }

  QueryBuilder<IsarCacheEntry, IsarCacheEntry, QAfterSortBy> thenByIsarKey() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarKey', Sort.asc);
    });
  }

  QueryBuilder<IsarCacheEntry, IsarCacheEntry, QAfterSortBy>
      thenByIsarKeyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarKey', Sort.desc);
    });
  }

  QueryBuilder<IsarCacheEntry, IsarCacheEntry, QAfterSortBy> thenByKey() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'key', Sort.asc);
    });
  }

  QueryBuilder<IsarCacheEntry, IsarCacheEntry, QAfterSortBy> thenByKeyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'key', Sort.desc);
    });
  }

  QueryBuilder<IsarCacheEntry, IsarCacheEntry, QAfterSortBy> thenByResponse() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'response', Sort.asc);
    });
  }

  QueryBuilder<IsarCacheEntry, IsarCacheEntry, QAfterSortBy>
      thenByResponseDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'response', Sort.desc);
    });
  }

  QueryBuilder<IsarCacheEntry, IsarCacheEntry, QAfterSortBy> thenByValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'value', Sort.asc);
    });
  }

  QueryBuilder<IsarCacheEntry, IsarCacheEntry, QAfterSortBy> thenByValueDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'value', Sort.desc);
    });
  }
}

extension IsarCacheEntryQueryWhereDistinct
    on QueryBuilder<IsarCacheEntry, IsarCacheEntry, QDistinct> {
  QueryBuilder<IsarCacheEntry, IsarCacheEntry, QDistinct> distinctByExpiry() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'expiry');
    });
  }

  QueryBuilder<IsarCacheEntry, IsarCacheEntry, QDistinct> distinctByIsValid() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isValid');
    });
  }

  QueryBuilder<IsarCacheEntry, IsarCacheEntry, QDistinct> distinctByIsarKey(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isarKey', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarCacheEntry, IsarCacheEntry, QDistinct> distinctByKey(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'key', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarCacheEntry, IsarCacheEntry, QDistinct> distinctByResponse(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'response', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarCacheEntry, IsarCacheEntry, QDistinct> distinctByValue(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'value', caseSensitive: caseSensitive);
    });
  }
}

extension IsarCacheEntryQueryProperty
    on QueryBuilder<IsarCacheEntry, IsarCacheEntry, QQueryProperty> {
  QueryBuilder<IsarCacheEntry, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<IsarCacheEntry, DateTime, QQueryOperations> expiryProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'expiry');
    });
  }

  QueryBuilder<IsarCacheEntry, bool, QQueryOperations> isValidProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isValid');
    });
  }

  QueryBuilder<IsarCacheEntry, String, QQueryOperations> isarKeyProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isarKey');
    });
  }

  QueryBuilder<IsarCacheEntry, String, QQueryOperations> keyProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'key');
    });
  }

  QueryBuilder<IsarCacheEntry, String, QQueryOperations> responseProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'response');
    });
  }

  QueryBuilder<IsarCacheEntry, String, QQueryOperations> valueProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'value');
    });
  }
}
