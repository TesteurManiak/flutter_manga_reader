// dart format width=80
// ignore_for_file: type=lint
import 'package:drift/drift.dart' as i0;
import 'package:flutter_manga_reader/core/sources/drift_datasource/tables/chapters.drift.dart'
    as i1;
import 'package:flutter_manga_reader/core/sources/drift_datasource/tables/chapters.dart'
    as i2;
import 'package:drift/src/runtime/query_builder/query_builder.dart' as i3;

i0.Index get chapterMangaId => i0.Index(
  'chapter_manga_id',
  'CREATE INDEX chapter_manga_id ON db_chapters (manga_id)',
);

class $DbChaptersTable extends i2.DbChapters
    with i0.TableInfo<$DbChaptersTable, i1.DbChapter> {
  @override
  final i0.GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DbChaptersTable(this.attachedDatabase, [this._alias]);
  static const i0.VerificationMeta _idMeta = const i0.VerificationMeta('id');
  @override
  late final i0.GeneratedColumn<int> id = i0.GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: i0.DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: i0.GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const i0.VerificationMeta _mangaIdMeta = const i0.VerificationMeta(
    'mangaId',
  );
  @override
  late final i0.GeneratedColumn<int> mangaId = i0.GeneratedColumn<int>(
    'manga_id',
    aliasedName,
    false,
    type: i0.DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: i0.GeneratedColumn.constraintIsAlways(
      'REFERENCES db_mangas (id) ON DELETE CASCADE',
    ),
  );
  static const i0.VerificationMeta _urlMeta = const i0.VerificationMeta('url');
  @override
  late final i0.GeneratedColumn<String> url = i0.GeneratedColumn<String>(
    'url',
    aliasedName,
    false,
    type: i0.DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const i0.VerificationMeta _nameMeta = const i0.VerificationMeta(
    'name',
  );
  @override
  late final i0.GeneratedColumn<String> name = i0.GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: i0.DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const i0.VerificationMeta _dateUploadMeta = const i0.VerificationMeta(
    'dateUpload',
  );
  @override
  late final i0.GeneratedColumn<DateTime> dateUpload =
      i0.GeneratedColumn<DateTime>(
        'date_upload',
        aliasedName,
        true,
        type: i0.DriftSqlType.dateTime,
        requiredDuringInsert: false,
      );
  static const i0.VerificationMeta _chapterNumberMeta =
      const i0.VerificationMeta('chapterNumber');
  @override
  late final i0.GeneratedColumn<double> chapterNumber =
      i0.GeneratedColumn<double>(
        'chapter_number',
        aliasedName,
        false,
        type: i0.DriftSqlType.double,
        requiredDuringInsert: false,
        defaultValue: const i3.Constant(-1),
      );
  static const i0.VerificationMeta _scanlatorMeta = const i0.VerificationMeta(
    'scanlator',
  );
  @override
  late final i0.GeneratedColumn<String> scanlator = i0.GeneratedColumn<String>(
    'scanlator',
    aliasedName,
    true,
    type: i0.DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const i0.VerificationMeta _readMeta = const i0.VerificationMeta(
    'read',
  );
  @override
  late final i0.GeneratedColumn<bool> read = i0.GeneratedColumn<bool>(
    'read',
    aliasedName,
    false,
    type: i0.DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: i0.GeneratedColumn.constraintIsAlways(
      'CHECK ("read" IN (0, 1))',
    ),
    defaultValue: const i3.Constant(false),
  );
  static const i0.VerificationMeta _downloadedMeta = const i0.VerificationMeta(
    'downloaded',
  );
  @override
  late final i0.GeneratedColumn<bool> downloaded = i0.GeneratedColumn<bool>(
    'downloaded',
    aliasedName,
    false,
    type: i0.DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: i0.GeneratedColumn.constraintIsAlways(
      'CHECK ("downloaded" IN (0, 1))',
    ),
    defaultValue: const i3.Constant(false),
  );
  static const i0.VerificationMeta _bookmarkMeta = const i0.VerificationMeta(
    'bookmark',
  );
  @override
  late final i0.GeneratedColumn<bool> bookmark = i0.GeneratedColumn<bool>(
    'bookmark',
    aliasedName,
    false,
    type: i0.DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: i0.GeneratedColumn.constraintIsAlways(
      'CHECK ("bookmark" IN (0, 1))',
    ),
    defaultValue: const i3.Constant(false),
  );
  static const i0.VerificationMeta _lastPageReadMeta =
      const i0.VerificationMeta('lastPageRead');
  @override
  late final i0.GeneratedColumn<int> lastPageRead = i0.GeneratedColumn<int>(
    'last_page_read',
    aliasedName,
    false,
    type: i0.DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const i3.Constant(0),
  );
  static const i0.VerificationMeta _dateFetchMeta = const i0.VerificationMeta(
    'dateFetch',
  );
  @override
  late final i0.GeneratedColumn<DateTime> dateFetch =
      i0.GeneratedColumn<DateTime>(
        'date_fetch',
        aliasedName,
        true,
        type: i0.DriftSqlType.dateTime,
        requiredDuringInsert: false,
      );
  static const i0.VerificationMeta _lastModifiedMeta =
      const i0.VerificationMeta('lastModified');
  @override
  late final i0.GeneratedColumn<DateTime> lastModified =
      i0.GeneratedColumn<DateTime>(
        'last_modified',
        aliasedName,
        true,
        type: i0.DriftSqlType.dateTime,
        requiredDuringInsert: false,
      );
  @override
  List<i0.GeneratedColumn> get $columns => [
    id,
    mangaId,
    url,
    name,
    dateUpload,
    chapterNumber,
    scanlator,
    read,
    downloaded,
    bookmark,
    lastPageRead,
    dateFetch,
    lastModified,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'db_chapters';
  @override
  i0.VerificationContext validateIntegrity(
    i0.Insertable<i1.DbChapter> instance, {
    bool isInserting = false,
  }) {
    final context = i0.VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('manga_id')) {
      context.handle(
        _mangaIdMeta,
        mangaId.isAcceptableOrUnknown(data['manga_id']!, _mangaIdMeta),
      );
    } else if (isInserting) {
      context.missing(_mangaIdMeta);
    }
    if (data.containsKey('url')) {
      context.handle(
        _urlMeta,
        url.isAcceptableOrUnknown(data['url']!, _urlMeta),
      );
    } else if (isInserting) {
      context.missing(_urlMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('date_upload')) {
      context.handle(
        _dateUploadMeta,
        dateUpload.isAcceptableOrUnknown(data['date_upload']!, _dateUploadMeta),
      );
    }
    if (data.containsKey('chapter_number')) {
      context.handle(
        _chapterNumberMeta,
        chapterNumber.isAcceptableOrUnknown(
          data['chapter_number']!,
          _chapterNumberMeta,
        ),
      );
    }
    if (data.containsKey('scanlator')) {
      context.handle(
        _scanlatorMeta,
        scanlator.isAcceptableOrUnknown(data['scanlator']!, _scanlatorMeta),
      );
    }
    if (data.containsKey('read')) {
      context.handle(
        _readMeta,
        read.isAcceptableOrUnknown(data['read']!, _readMeta),
      );
    }
    if (data.containsKey('downloaded')) {
      context.handle(
        _downloadedMeta,
        downloaded.isAcceptableOrUnknown(data['downloaded']!, _downloadedMeta),
      );
    }
    if (data.containsKey('bookmark')) {
      context.handle(
        _bookmarkMeta,
        bookmark.isAcceptableOrUnknown(data['bookmark']!, _bookmarkMeta),
      );
    }
    if (data.containsKey('last_page_read')) {
      context.handle(
        _lastPageReadMeta,
        lastPageRead.isAcceptableOrUnknown(
          data['last_page_read']!,
          _lastPageReadMeta,
        ),
      );
    }
    if (data.containsKey('date_fetch')) {
      context.handle(
        _dateFetchMeta,
        dateFetch.isAcceptableOrUnknown(data['date_fetch']!, _dateFetchMeta),
      );
    }
    if (data.containsKey('last_modified')) {
      context.handle(
        _lastModifiedMeta,
        lastModified.isAcceptableOrUnknown(
          data['last_modified']!,
          _lastModifiedMeta,
        ),
      );
    }
    return context;
  }

  @override
  Set<i0.GeneratedColumn> get $primaryKey => {id};
  @override
  List<Set<i0.GeneratedColumn>> get uniqueKeys => [
    {mangaId, url},
  ];
  @override
  i1.DbChapter map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return i1.DbChapter(
      id: attachedDatabase.typeMapping.read(
        i0.DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      mangaId: attachedDatabase.typeMapping.read(
        i0.DriftSqlType.int,
        data['${effectivePrefix}manga_id'],
      )!,
      url: attachedDatabase.typeMapping.read(
        i0.DriftSqlType.string,
        data['${effectivePrefix}url'],
      )!,
      name: attachedDatabase.typeMapping.read(
        i0.DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      dateUpload: attachedDatabase.typeMapping.read(
        i0.DriftSqlType.dateTime,
        data['${effectivePrefix}date_upload'],
      ),
      chapterNumber: attachedDatabase.typeMapping.read(
        i0.DriftSqlType.double,
        data['${effectivePrefix}chapter_number'],
      )!,
      scanlator: attachedDatabase.typeMapping.read(
        i0.DriftSqlType.string,
        data['${effectivePrefix}scanlator'],
      ),
      read: attachedDatabase.typeMapping.read(
        i0.DriftSqlType.bool,
        data['${effectivePrefix}read'],
      )!,
      downloaded: attachedDatabase.typeMapping.read(
        i0.DriftSqlType.bool,
        data['${effectivePrefix}downloaded'],
      )!,
      bookmark: attachedDatabase.typeMapping.read(
        i0.DriftSqlType.bool,
        data['${effectivePrefix}bookmark'],
      )!,
      lastPageRead: attachedDatabase.typeMapping.read(
        i0.DriftSqlType.int,
        data['${effectivePrefix}last_page_read'],
      )!,
      dateFetch: attachedDatabase.typeMapping.read(
        i0.DriftSqlType.dateTime,
        data['${effectivePrefix}date_fetch'],
      ),
      lastModified: attachedDatabase.typeMapping.read(
        i0.DriftSqlType.dateTime,
        data['${effectivePrefix}last_modified'],
      ),
    );
  }

  @override
  $DbChaptersTable createAlias(String alias) {
    return $DbChaptersTable(attachedDatabase, alias);
  }
}

class DbChapter extends i0.DataClass implements i0.Insertable<i1.DbChapter> {
  final int id;
  final int mangaId;
  final String url;
  final String name;
  final DateTime? dateUpload;
  final double chapterNumber;
  final String? scanlator;
  final bool read;
  final bool downloaded;
  final bool bookmark;
  final int lastPageRead;
  final DateTime? dateFetch;
  final DateTime? lastModified;
  const DbChapter({
    required this.id,
    required this.mangaId,
    required this.url,
    required this.name,
    this.dateUpload,
    required this.chapterNumber,
    this.scanlator,
    required this.read,
    required this.downloaded,
    required this.bookmark,
    required this.lastPageRead,
    this.dateFetch,
    this.lastModified,
  });
  @override
  Map<String, i0.Expression> toColumns(bool nullToAbsent) {
    final map = <String, i0.Expression>{};
    map['id'] = i0.Variable<int>(id);
    map['manga_id'] = i0.Variable<int>(mangaId);
    map['url'] = i0.Variable<String>(url);
    map['name'] = i0.Variable<String>(name);
    if (!nullToAbsent || dateUpload != null) {
      map['date_upload'] = i0.Variable<DateTime>(dateUpload);
    }
    map['chapter_number'] = i0.Variable<double>(chapterNumber);
    if (!nullToAbsent || scanlator != null) {
      map['scanlator'] = i0.Variable<String>(scanlator);
    }
    map['read'] = i0.Variable<bool>(read);
    map['downloaded'] = i0.Variable<bool>(downloaded);
    map['bookmark'] = i0.Variable<bool>(bookmark);
    map['last_page_read'] = i0.Variable<int>(lastPageRead);
    if (!nullToAbsent || dateFetch != null) {
      map['date_fetch'] = i0.Variable<DateTime>(dateFetch);
    }
    if (!nullToAbsent || lastModified != null) {
      map['last_modified'] = i0.Variable<DateTime>(lastModified);
    }
    return map;
  }

  factory DbChapter.fromJson(
    Map<String, dynamic> json, {
    i0.ValueSerializer? serializer,
  }) {
    serializer ??= i0.driftRuntimeOptions.defaultSerializer;
    return DbChapter(
      id: serializer.fromJson<int>(json['id']),
      mangaId: serializer.fromJson<int>(json['mangaId']),
      url: serializer.fromJson<String>(json['url']),
      name: serializer.fromJson<String>(json['name']),
      dateUpload: serializer.fromJson<DateTime?>(json['dateUpload']),
      chapterNumber: serializer.fromJson<double>(json['chapterNumber']),
      scanlator: serializer.fromJson<String?>(json['scanlator']),
      read: serializer.fromJson<bool>(json['read']),
      downloaded: serializer.fromJson<bool>(json['downloaded']),
      bookmark: serializer.fromJson<bool>(json['bookmark']),
      lastPageRead: serializer.fromJson<int>(json['lastPageRead']),
      dateFetch: serializer.fromJson<DateTime?>(json['dateFetch']),
      lastModified: serializer.fromJson<DateTime?>(json['lastModified']),
    );
  }
  @override
  Map<String, dynamic> toJson({i0.ValueSerializer? serializer}) {
    serializer ??= i0.driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'mangaId': serializer.toJson<int>(mangaId),
      'url': serializer.toJson<String>(url),
      'name': serializer.toJson<String>(name),
      'dateUpload': serializer.toJson<DateTime?>(dateUpload),
      'chapterNumber': serializer.toJson<double>(chapterNumber),
      'scanlator': serializer.toJson<String?>(scanlator),
      'read': serializer.toJson<bool>(read),
      'downloaded': serializer.toJson<bool>(downloaded),
      'bookmark': serializer.toJson<bool>(bookmark),
      'lastPageRead': serializer.toJson<int>(lastPageRead),
      'dateFetch': serializer.toJson<DateTime?>(dateFetch),
      'lastModified': serializer.toJson<DateTime?>(lastModified),
    };
  }

  i1.DbChapter copyWith({
    int? id,
    int? mangaId,
    String? url,
    String? name,
    i0.Value<DateTime?> dateUpload = const i0.Value.absent(),
    double? chapterNumber,
    i0.Value<String?> scanlator = const i0.Value.absent(),
    bool? read,
    bool? downloaded,
    bool? bookmark,
    int? lastPageRead,
    i0.Value<DateTime?> dateFetch = const i0.Value.absent(),
    i0.Value<DateTime?> lastModified = const i0.Value.absent(),
  }) => i1.DbChapter(
    id: id ?? this.id,
    mangaId: mangaId ?? this.mangaId,
    url: url ?? this.url,
    name: name ?? this.name,
    dateUpload: dateUpload.present ? dateUpload.value : this.dateUpload,
    chapterNumber: chapterNumber ?? this.chapterNumber,
    scanlator: scanlator.present ? scanlator.value : this.scanlator,
    read: read ?? this.read,
    downloaded: downloaded ?? this.downloaded,
    bookmark: bookmark ?? this.bookmark,
    lastPageRead: lastPageRead ?? this.lastPageRead,
    dateFetch: dateFetch.present ? dateFetch.value : this.dateFetch,
    lastModified: lastModified.present ? lastModified.value : this.lastModified,
  );
  DbChapter copyWithCompanion(i1.DbChaptersCompanion data) {
    return DbChapter(
      id: data.id.present ? data.id.value : this.id,
      mangaId: data.mangaId.present ? data.mangaId.value : this.mangaId,
      url: data.url.present ? data.url.value : this.url,
      name: data.name.present ? data.name.value : this.name,
      dateUpload: data.dateUpload.present
          ? data.dateUpload.value
          : this.dateUpload,
      chapterNumber: data.chapterNumber.present
          ? data.chapterNumber.value
          : this.chapterNumber,
      scanlator: data.scanlator.present ? data.scanlator.value : this.scanlator,
      read: data.read.present ? data.read.value : this.read,
      downloaded: data.downloaded.present
          ? data.downloaded.value
          : this.downloaded,
      bookmark: data.bookmark.present ? data.bookmark.value : this.bookmark,
      lastPageRead: data.lastPageRead.present
          ? data.lastPageRead.value
          : this.lastPageRead,
      dateFetch: data.dateFetch.present ? data.dateFetch.value : this.dateFetch,
      lastModified: data.lastModified.present
          ? data.lastModified.value
          : this.lastModified,
    );
  }

  @override
  String toString() {
    return (StringBuffer('DbChapter(')
          ..write('id: $id, ')
          ..write('mangaId: $mangaId, ')
          ..write('url: $url, ')
          ..write('name: $name, ')
          ..write('dateUpload: $dateUpload, ')
          ..write('chapterNumber: $chapterNumber, ')
          ..write('scanlator: $scanlator, ')
          ..write('read: $read, ')
          ..write('downloaded: $downloaded, ')
          ..write('bookmark: $bookmark, ')
          ..write('lastPageRead: $lastPageRead, ')
          ..write('dateFetch: $dateFetch, ')
          ..write('lastModified: $lastModified')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    mangaId,
    url,
    name,
    dateUpload,
    chapterNumber,
    scanlator,
    read,
    downloaded,
    bookmark,
    lastPageRead,
    dateFetch,
    lastModified,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is i1.DbChapter &&
          other.id == this.id &&
          other.mangaId == this.mangaId &&
          other.url == this.url &&
          other.name == this.name &&
          other.dateUpload == this.dateUpload &&
          other.chapterNumber == this.chapterNumber &&
          other.scanlator == this.scanlator &&
          other.read == this.read &&
          other.downloaded == this.downloaded &&
          other.bookmark == this.bookmark &&
          other.lastPageRead == this.lastPageRead &&
          other.dateFetch == this.dateFetch &&
          other.lastModified == this.lastModified);
}

class DbChaptersCompanion extends i0.UpdateCompanion<i1.DbChapter> {
  final i0.Value<int> id;
  final i0.Value<int> mangaId;
  final i0.Value<String> url;
  final i0.Value<String> name;
  final i0.Value<DateTime?> dateUpload;
  final i0.Value<double> chapterNumber;
  final i0.Value<String?> scanlator;
  final i0.Value<bool> read;
  final i0.Value<bool> downloaded;
  final i0.Value<bool> bookmark;
  final i0.Value<int> lastPageRead;
  final i0.Value<DateTime?> dateFetch;
  final i0.Value<DateTime?> lastModified;
  const DbChaptersCompanion({
    this.id = const i0.Value.absent(),
    this.mangaId = const i0.Value.absent(),
    this.url = const i0.Value.absent(),
    this.name = const i0.Value.absent(),
    this.dateUpload = const i0.Value.absent(),
    this.chapterNumber = const i0.Value.absent(),
    this.scanlator = const i0.Value.absent(),
    this.read = const i0.Value.absent(),
    this.downloaded = const i0.Value.absent(),
    this.bookmark = const i0.Value.absent(),
    this.lastPageRead = const i0.Value.absent(),
    this.dateFetch = const i0.Value.absent(),
    this.lastModified = const i0.Value.absent(),
  });
  DbChaptersCompanion.insert({
    this.id = const i0.Value.absent(),
    required int mangaId,
    required String url,
    required String name,
    this.dateUpload = const i0.Value.absent(),
    this.chapterNumber = const i0.Value.absent(),
    this.scanlator = const i0.Value.absent(),
    this.read = const i0.Value.absent(),
    this.downloaded = const i0.Value.absent(),
    this.bookmark = const i0.Value.absent(),
    this.lastPageRead = const i0.Value.absent(),
    this.dateFetch = const i0.Value.absent(),
    this.lastModified = const i0.Value.absent(),
  }) : mangaId = i0.Value(mangaId),
       url = i0.Value(url),
       name = i0.Value(name);
  static i0.Insertable<i1.DbChapter> custom({
    i0.Expression<int>? id,
    i0.Expression<int>? mangaId,
    i0.Expression<String>? url,
    i0.Expression<String>? name,
    i0.Expression<DateTime>? dateUpload,
    i0.Expression<double>? chapterNumber,
    i0.Expression<String>? scanlator,
    i0.Expression<bool>? read,
    i0.Expression<bool>? downloaded,
    i0.Expression<bool>? bookmark,
    i0.Expression<int>? lastPageRead,
    i0.Expression<DateTime>? dateFetch,
    i0.Expression<DateTime>? lastModified,
  }) {
    return i0.RawValuesInsertable({
      if (id != null) 'id': id,
      if (mangaId != null) 'manga_id': mangaId,
      if (url != null) 'url': url,
      if (name != null) 'name': name,
      if (dateUpload != null) 'date_upload': dateUpload,
      if (chapterNumber != null) 'chapter_number': chapterNumber,
      if (scanlator != null) 'scanlator': scanlator,
      if (read != null) 'read': read,
      if (downloaded != null) 'downloaded': downloaded,
      if (bookmark != null) 'bookmark': bookmark,
      if (lastPageRead != null) 'last_page_read': lastPageRead,
      if (dateFetch != null) 'date_fetch': dateFetch,
      if (lastModified != null) 'last_modified': lastModified,
    });
  }

  i1.DbChaptersCompanion copyWith({
    i0.Value<int>? id,
    i0.Value<int>? mangaId,
    i0.Value<String>? url,
    i0.Value<String>? name,
    i0.Value<DateTime?>? dateUpload,
    i0.Value<double>? chapterNumber,
    i0.Value<String?>? scanlator,
    i0.Value<bool>? read,
    i0.Value<bool>? downloaded,
    i0.Value<bool>? bookmark,
    i0.Value<int>? lastPageRead,
    i0.Value<DateTime?>? dateFetch,
    i0.Value<DateTime?>? lastModified,
  }) {
    return i1.DbChaptersCompanion(
      id: id ?? this.id,
      mangaId: mangaId ?? this.mangaId,
      url: url ?? this.url,
      name: name ?? this.name,
      dateUpload: dateUpload ?? this.dateUpload,
      chapterNumber: chapterNumber ?? this.chapterNumber,
      scanlator: scanlator ?? this.scanlator,
      read: read ?? this.read,
      downloaded: downloaded ?? this.downloaded,
      bookmark: bookmark ?? this.bookmark,
      lastPageRead: lastPageRead ?? this.lastPageRead,
      dateFetch: dateFetch ?? this.dateFetch,
      lastModified: lastModified ?? this.lastModified,
    );
  }

  @override
  Map<String, i0.Expression> toColumns(bool nullToAbsent) {
    final map = <String, i0.Expression>{};
    if (id.present) {
      map['id'] = i0.Variable<int>(id.value);
    }
    if (mangaId.present) {
      map['manga_id'] = i0.Variable<int>(mangaId.value);
    }
    if (url.present) {
      map['url'] = i0.Variable<String>(url.value);
    }
    if (name.present) {
      map['name'] = i0.Variable<String>(name.value);
    }
    if (dateUpload.present) {
      map['date_upload'] = i0.Variable<DateTime>(dateUpload.value);
    }
    if (chapterNumber.present) {
      map['chapter_number'] = i0.Variable<double>(chapterNumber.value);
    }
    if (scanlator.present) {
      map['scanlator'] = i0.Variable<String>(scanlator.value);
    }
    if (read.present) {
      map['read'] = i0.Variable<bool>(read.value);
    }
    if (downloaded.present) {
      map['downloaded'] = i0.Variable<bool>(downloaded.value);
    }
    if (bookmark.present) {
      map['bookmark'] = i0.Variable<bool>(bookmark.value);
    }
    if (lastPageRead.present) {
      map['last_page_read'] = i0.Variable<int>(lastPageRead.value);
    }
    if (dateFetch.present) {
      map['date_fetch'] = i0.Variable<DateTime>(dateFetch.value);
    }
    if (lastModified.present) {
      map['last_modified'] = i0.Variable<DateTime>(lastModified.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DbChaptersCompanion(')
          ..write('id: $id, ')
          ..write('mangaId: $mangaId, ')
          ..write('url: $url, ')
          ..write('name: $name, ')
          ..write('dateUpload: $dateUpload, ')
          ..write('chapterNumber: $chapterNumber, ')
          ..write('scanlator: $scanlator, ')
          ..write('read: $read, ')
          ..write('downloaded: $downloaded, ')
          ..write('bookmark: $bookmark, ')
          ..write('lastPageRead: $lastPageRead, ')
          ..write('dateFetch: $dateFetch, ')
          ..write('lastModified: $lastModified')
          ..write(')'))
        .toString();
  }
}

i0.Index get chapterDateUpload => i0.Index(
  'chapter_date_upload',
  'CREATE INDEX chapter_date_upload ON db_chapters (date_upload)',
);
i0.Index get chapterNumber => i0.Index(
  'chapter_number',
  'CREATE INDEX chapter_number ON db_chapters (chapter_number)',
);
i0.Index get chapterRead =>
    i0.Index('chapter_read', 'CREATE INDEX chapter_read ON db_chapters (read)');
