// dart format width=80
// ignore_for_file: type=lint
import 'package:drift/drift.dart' as i0;
import 'package:flutter_manga_reader/core/sources/drift_datasource/tables/mangas.drift.dart'
    as i1;
import 'package:manga_reader_core/src/models/manga_status.dart' as i2;
import 'package:manga_reader_core/src/models/update_strategy.dart' as i3;
import 'package:flutter_manga_reader/core/sources/drift_datasource/tables/mangas.dart'
    as i4;
import 'package:drift/src/runtime/query_builder/query_builder.dart' as i5;

i0.Index get mangaSourceId => i0.Index(
  'manga_source_id',
  'CREATE INDEX manga_source_id ON db_mangas (source_id)',
);

class $DbMangasTable extends i4.DbMangas
    with i0.TableInfo<$DbMangasTable, i1.DbManga> {
  @override
  final i0.GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DbMangasTable(this.attachedDatabase, [this._alias]);
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
  static const i0.VerificationMeta _sourceIdMeta = const i0.VerificationMeta(
    'sourceId',
  );
  @override
  late final i0.GeneratedColumn<String> sourceId = i0.GeneratedColumn<String>(
    'source_id',
    aliasedName,
    false,
    type: i0.DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const i0.VerificationMeta _favoriteMeta = const i0.VerificationMeta(
    'favorite',
  );
  @override
  late final i0.GeneratedColumn<bool> favorite = i0.GeneratedColumn<bool>(
    'favorite',
    aliasedName,
    false,
    type: i0.DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: i0.GeneratedColumn.constraintIsAlways(
      'CHECK ("favorite" IN (0, 1))',
    ),
    defaultValue: const i5.Constant(false),
  );
  static const i0.VerificationMeta _fetchIntervalMeta =
      const i0.VerificationMeta('fetchInterval');
  @override
  late final i0.GeneratedColumn<int> fetchInterval = i0.GeneratedColumn<int>(
    'fetch_interval',
    aliasedName,
    false,
    type: i0.DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const i5.Constant(0),
  );
  static const i0.VerificationMeta _dateAddedMeta = const i0.VerificationMeta(
    'dateAdded',
  );
  @override
  late final i0.GeneratedColumn<DateTime> dateAdded =
      i0.GeneratedColumn<DateTime>(
        'date_added',
        aliasedName,
        true,
        type: i0.DriftSqlType.dateTime,
        requiredDuringInsert: false,
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
  static const i0.VerificationMeta _titleMeta = const i0.VerificationMeta(
    'title',
  );
  @override
  late final i0.GeneratedColumn<String> title = i0.GeneratedColumn<String>(
    'title',
    aliasedName,
    false,
    type: i0.DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const i0.VerificationMeta _artistMeta = const i0.VerificationMeta(
    'artist',
  );
  @override
  late final i0.GeneratedColumn<String> artist = i0.GeneratedColumn<String>(
    'artist',
    aliasedName,
    true,
    type: i0.DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const i0.VerificationMeta _authorMeta = const i0.VerificationMeta(
    'author',
  );
  @override
  late final i0.GeneratedColumn<String> author = i0.GeneratedColumn<String>(
    'author',
    aliasedName,
    true,
    type: i0.DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const i0.VerificationMeta _descriptionMeta = const i0.VerificationMeta(
    'description',
  );
  @override
  late final i0.GeneratedColumn<String> description =
      i0.GeneratedColumn<String>(
        'description',
        aliasedName,
        true,
        type: i0.DriftSqlType.string,
        requiredDuringInsert: false,
      );
  static const i0.VerificationMeta _genreMeta = const i0.VerificationMeta(
    'genre',
  );
  @override
  late final i0.GeneratedColumn<String> genre = i0.GeneratedColumn<String>(
    'genre',
    aliasedName,
    true,
    type: i0.DriftSqlType.string,
    requiredDuringInsert: false,
  );
  @override
  late final i0.GeneratedColumnWithTypeConverter<i2.MangaStatus, int> status =
      i0.GeneratedColumn<int>(
        'status',
        aliasedName,
        false,
        type: i0.DriftSqlType.int,
        requiredDuringInsert: false,
        defaultValue: const i5.Constant(0),
      ).withConverter<i2.MangaStatus>(i1.$DbMangasTable.$converterstatus);
  static const i0.VerificationMeta _thumbnailUrlMeta =
      const i0.VerificationMeta('thumbnailUrl');
  @override
  late final i0.GeneratedColumn<String> thumbnailUrl =
      i0.GeneratedColumn<String>(
        'thumbnail_url',
        aliasedName,
        true,
        type: i0.DriftSqlType.string,
        requiredDuringInsert: false,
      );
  @override
  late final i0.GeneratedColumnWithTypeConverter<i3.UpdateStrategy, int>
  updateStrategy =
      i0.GeneratedColumn<int>(
        'update_strategy',
        aliasedName,
        false,
        type: i0.DriftSqlType.int,
        requiredDuringInsert: true,
      ).withConverter<i3.UpdateStrategy>(
        i1.$DbMangasTable.$converterupdateStrategy,
      );
  static const i0.VerificationMeta _initializedMeta = const i0.VerificationMeta(
    'initialized',
  );
  @override
  late final i0.GeneratedColumn<bool> initialized = i0.GeneratedColumn<bool>(
    'initialized',
    aliasedName,
    false,
    type: i0.DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: i0.GeneratedColumn.constraintIsAlways(
      'CHECK ("initialized" IN (0, 1))',
    ),
    defaultValue: const i5.Constant(false),
  );
  static const i0.VerificationMeta _lastModifiedAtMeta =
      const i0.VerificationMeta('lastModifiedAt');
  @override
  late final i0.GeneratedColumn<DateTime> lastModifiedAt =
      i0.GeneratedColumn<DateTime>(
        'last_modified_at',
        aliasedName,
        true,
        type: i0.DriftSqlType.dateTime,
        requiredDuringInsert: false,
      );
  @override
  List<i0.GeneratedColumn> get $columns => [
    id,
    sourceId,
    favorite,
    fetchInterval,
    dateAdded,
    url,
    title,
    artist,
    author,
    description,
    genre,
    status,
    thumbnailUrl,
    updateStrategy,
    initialized,
    lastModifiedAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'db_mangas';
  @override
  i0.VerificationContext validateIntegrity(
    i0.Insertable<i1.DbManga> instance, {
    bool isInserting = false,
  }) {
    final context = i0.VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('source_id')) {
      context.handle(
        _sourceIdMeta,
        sourceId.isAcceptableOrUnknown(data['source_id']!, _sourceIdMeta),
      );
    } else if (isInserting) {
      context.missing(_sourceIdMeta);
    }
    if (data.containsKey('favorite')) {
      context.handle(
        _favoriteMeta,
        favorite.isAcceptableOrUnknown(data['favorite']!, _favoriteMeta),
      );
    }
    if (data.containsKey('fetch_interval')) {
      context.handle(
        _fetchIntervalMeta,
        fetchInterval.isAcceptableOrUnknown(
          data['fetch_interval']!,
          _fetchIntervalMeta,
        ),
      );
    }
    if (data.containsKey('date_added')) {
      context.handle(
        _dateAddedMeta,
        dateAdded.isAcceptableOrUnknown(data['date_added']!, _dateAddedMeta),
      );
    }
    if (data.containsKey('url')) {
      context.handle(
        _urlMeta,
        url.isAcceptableOrUnknown(data['url']!, _urlMeta),
      );
    } else if (isInserting) {
      context.missing(_urlMeta);
    }
    if (data.containsKey('title')) {
      context.handle(
        _titleMeta,
        title.isAcceptableOrUnknown(data['title']!, _titleMeta),
      );
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('artist')) {
      context.handle(
        _artistMeta,
        artist.isAcceptableOrUnknown(data['artist']!, _artistMeta),
      );
    }
    if (data.containsKey('author')) {
      context.handle(
        _authorMeta,
        author.isAcceptableOrUnknown(data['author']!, _authorMeta),
      );
    }
    if (data.containsKey('description')) {
      context.handle(
        _descriptionMeta,
        description.isAcceptableOrUnknown(
          data['description']!,
          _descriptionMeta,
        ),
      );
    }
    if (data.containsKey('genre')) {
      context.handle(
        _genreMeta,
        genre.isAcceptableOrUnknown(data['genre']!, _genreMeta),
      );
    }
    if (data.containsKey('thumbnail_url')) {
      context.handle(
        _thumbnailUrlMeta,
        thumbnailUrl.isAcceptableOrUnknown(
          data['thumbnail_url']!,
          _thumbnailUrlMeta,
        ),
      );
    }
    if (data.containsKey('initialized')) {
      context.handle(
        _initializedMeta,
        initialized.isAcceptableOrUnknown(
          data['initialized']!,
          _initializedMeta,
        ),
      );
    }
    if (data.containsKey('last_modified_at')) {
      context.handle(
        _lastModifiedAtMeta,
        lastModifiedAt.isAcceptableOrUnknown(
          data['last_modified_at']!,
          _lastModifiedAtMeta,
        ),
      );
    }
    return context;
  }

  @override
  Set<i0.GeneratedColumn> get $primaryKey => {id};
  @override
  List<Set<i0.GeneratedColumn>> get uniqueKeys => [
    {sourceId, url},
  ];
  @override
  i1.DbManga map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return i1.DbManga(
      id: attachedDatabase.typeMapping.read(
        i0.DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      sourceId: attachedDatabase.typeMapping.read(
        i0.DriftSqlType.string,
        data['${effectivePrefix}source_id'],
      )!,
      favorite: attachedDatabase.typeMapping.read(
        i0.DriftSqlType.bool,
        data['${effectivePrefix}favorite'],
      )!,
      fetchInterval: attachedDatabase.typeMapping.read(
        i0.DriftSqlType.int,
        data['${effectivePrefix}fetch_interval'],
      )!,
      dateAdded: attachedDatabase.typeMapping.read(
        i0.DriftSqlType.dateTime,
        data['${effectivePrefix}date_added'],
      ),
      url: attachedDatabase.typeMapping.read(
        i0.DriftSqlType.string,
        data['${effectivePrefix}url'],
      )!,
      title: attachedDatabase.typeMapping.read(
        i0.DriftSqlType.string,
        data['${effectivePrefix}title'],
      )!,
      artist: attachedDatabase.typeMapping.read(
        i0.DriftSqlType.string,
        data['${effectivePrefix}artist'],
      ),
      author: attachedDatabase.typeMapping.read(
        i0.DriftSqlType.string,
        data['${effectivePrefix}author'],
      ),
      description: attachedDatabase.typeMapping.read(
        i0.DriftSqlType.string,
        data['${effectivePrefix}description'],
      ),
      genre: attachedDatabase.typeMapping.read(
        i0.DriftSqlType.string,
        data['${effectivePrefix}genre'],
      ),
      status: i1.$DbMangasTable.$converterstatus.fromSql(
        attachedDatabase.typeMapping.read(
          i0.DriftSqlType.int,
          data['${effectivePrefix}status'],
        )!,
      ),
      thumbnailUrl: attachedDatabase.typeMapping.read(
        i0.DriftSqlType.string,
        data['${effectivePrefix}thumbnail_url'],
      ),
      updateStrategy: i1.$DbMangasTable.$converterupdateStrategy.fromSql(
        attachedDatabase.typeMapping.read(
          i0.DriftSqlType.int,
          data['${effectivePrefix}update_strategy'],
        )!,
      ),
      initialized: attachedDatabase.typeMapping.read(
        i0.DriftSqlType.bool,
        data['${effectivePrefix}initialized'],
      )!,
      lastModifiedAt: attachedDatabase.typeMapping.read(
        i0.DriftSqlType.dateTime,
        data['${effectivePrefix}last_modified_at'],
      ),
    );
  }

  @override
  $DbMangasTable createAlias(String alias) {
    return $DbMangasTable(attachedDatabase, alias);
  }

  static i0.JsonTypeConverter2<i2.MangaStatus, int, int> $converterstatus =
      const i0.EnumIndexConverter<i2.MangaStatus>(i2.MangaStatus.values);
  static i0.JsonTypeConverter2<i3.UpdateStrategy, int, int>
  $converterupdateStrategy = const i0.EnumIndexConverter<i3.UpdateStrategy>(
    i3.UpdateStrategy.values,
  );
}

class DbManga extends i0.DataClass implements i0.Insertable<i1.DbManga> {
  final int id;
  final String sourceId;
  final bool favorite;
  final int fetchInterval;
  final DateTime? dateAdded;
  final String url;
  final String title;
  final String? artist;
  final String? author;
  final String? description;
  final String? genre;
  final i2.MangaStatus status;
  final String? thumbnailUrl;
  final i3.UpdateStrategy updateStrategy;
  final bool initialized;
  final DateTime? lastModifiedAt;
  const DbManga({
    required this.id,
    required this.sourceId,
    required this.favorite,
    required this.fetchInterval,
    this.dateAdded,
    required this.url,
    required this.title,
    this.artist,
    this.author,
    this.description,
    this.genre,
    required this.status,
    this.thumbnailUrl,
    required this.updateStrategy,
    required this.initialized,
    this.lastModifiedAt,
  });
  @override
  Map<String, i0.Expression> toColumns(bool nullToAbsent) {
    final map = <String, i0.Expression>{};
    map['id'] = i0.Variable<int>(id);
    map['source_id'] = i0.Variable<String>(sourceId);
    map['favorite'] = i0.Variable<bool>(favorite);
    map['fetch_interval'] = i0.Variable<int>(fetchInterval);
    if (!nullToAbsent || dateAdded != null) {
      map['date_added'] = i0.Variable<DateTime>(dateAdded);
    }
    map['url'] = i0.Variable<String>(url);
    map['title'] = i0.Variable<String>(title);
    if (!nullToAbsent || artist != null) {
      map['artist'] = i0.Variable<String>(artist);
    }
    if (!nullToAbsent || author != null) {
      map['author'] = i0.Variable<String>(author);
    }
    if (!nullToAbsent || description != null) {
      map['description'] = i0.Variable<String>(description);
    }
    if (!nullToAbsent || genre != null) {
      map['genre'] = i0.Variable<String>(genre);
    }
    {
      map['status'] = i0.Variable<int>(
        i1.$DbMangasTable.$converterstatus.toSql(status),
      );
    }
    if (!nullToAbsent || thumbnailUrl != null) {
      map['thumbnail_url'] = i0.Variable<String>(thumbnailUrl);
    }
    {
      map['update_strategy'] = i0.Variable<int>(
        i1.$DbMangasTable.$converterupdateStrategy.toSql(updateStrategy),
      );
    }
    map['initialized'] = i0.Variable<bool>(initialized);
    if (!nullToAbsent || lastModifiedAt != null) {
      map['last_modified_at'] = i0.Variable<DateTime>(lastModifiedAt);
    }
    return map;
  }

  factory DbManga.fromJson(
    Map<String, dynamic> json, {
    i0.ValueSerializer? serializer,
  }) {
    serializer ??= i0.driftRuntimeOptions.defaultSerializer;
    return DbManga(
      id: serializer.fromJson<int>(json['id']),
      sourceId: serializer.fromJson<String>(json['sourceId']),
      favorite: serializer.fromJson<bool>(json['favorite']),
      fetchInterval: serializer.fromJson<int>(json['fetchInterval']),
      dateAdded: serializer.fromJson<DateTime?>(json['dateAdded']),
      url: serializer.fromJson<String>(json['url']),
      title: serializer.fromJson<String>(json['title']),
      artist: serializer.fromJson<String?>(json['artist']),
      author: serializer.fromJson<String?>(json['author']),
      description: serializer.fromJson<String?>(json['description']),
      genre: serializer.fromJson<String?>(json['genre']),
      status: i1.$DbMangasTable.$converterstatus.fromJson(
        serializer.fromJson<int>(json['status']),
      ),
      thumbnailUrl: serializer.fromJson<String?>(json['thumbnailUrl']),
      updateStrategy: i1.$DbMangasTable.$converterupdateStrategy.fromJson(
        serializer.fromJson<int>(json['updateStrategy']),
      ),
      initialized: serializer.fromJson<bool>(json['initialized']),
      lastModifiedAt: serializer.fromJson<DateTime?>(json['lastModifiedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({i0.ValueSerializer? serializer}) {
    serializer ??= i0.driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'sourceId': serializer.toJson<String>(sourceId),
      'favorite': serializer.toJson<bool>(favorite),
      'fetchInterval': serializer.toJson<int>(fetchInterval),
      'dateAdded': serializer.toJson<DateTime?>(dateAdded),
      'url': serializer.toJson<String>(url),
      'title': serializer.toJson<String>(title),
      'artist': serializer.toJson<String?>(artist),
      'author': serializer.toJson<String?>(author),
      'description': serializer.toJson<String?>(description),
      'genre': serializer.toJson<String?>(genre),
      'status': serializer.toJson<int>(
        i1.$DbMangasTable.$converterstatus.toJson(status),
      ),
      'thumbnailUrl': serializer.toJson<String?>(thumbnailUrl),
      'updateStrategy': serializer.toJson<int>(
        i1.$DbMangasTable.$converterupdateStrategy.toJson(updateStrategy),
      ),
      'initialized': serializer.toJson<bool>(initialized),
      'lastModifiedAt': serializer.toJson<DateTime?>(lastModifiedAt),
    };
  }

  i1.DbManga copyWith({
    int? id,
    String? sourceId,
    bool? favorite,
    int? fetchInterval,
    i0.Value<DateTime?> dateAdded = const i0.Value.absent(),
    String? url,
    String? title,
    i0.Value<String?> artist = const i0.Value.absent(),
    i0.Value<String?> author = const i0.Value.absent(),
    i0.Value<String?> description = const i0.Value.absent(),
    i0.Value<String?> genre = const i0.Value.absent(),
    i2.MangaStatus? status,
    i0.Value<String?> thumbnailUrl = const i0.Value.absent(),
    i3.UpdateStrategy? updateStrategy,
    bool? initialized,
    i0.Value<DateTime?> lastModifiedAt = const i0.Value.absent(),
  }) => i1.DbManga(
    id: id ?? this.id,
    sourceId: sourceId ?? this.sourceId,
    favorite: favorite ?? this.favorite,
    fetchInterval: fetchInterval ?? this.fetchInterval,
    dateAdded: dateAdded.present ? dateAdded.value : this.dateAdded,
    url: url ?? this.url,
    title: title ?? this.title,
    artist: artist.present ? artist.value : this.artist,
    author: author.present ? author.value : this.author,
    description: description.present ? description.value : this.description,
    genre: genre.present ? genre.value : this.genre,
    status: status ?? this.status,
    thumbnailUrl: thumbnailUrl.present ? thumbnailUrl.value : this.thumbnailUrl,
    updateStrategy: updateStrategy ?? this.updateStrategy,
    initialized: initialized ?? this.initialized,
    lastModifiedAt: lastModifiedAt.present
        ? lastModifiedAt.value
        : this.lastModifiedAt,
  );
  DbManga copyWithCompanion(i1.DbMangasCompanion data) {
    return DbManga(
      id: data.id.present ? data.id.value : this.id,
      sourceId: data.sourceId.present ? data.sourceId.value : this.sourceId,
      favorite: data.favorite.present ? data.favorite.value : this.favorite,
      fetchInterval: data.fetchInterval.present
          ? data.fetchInterval.value
          : this.fetchInterval,
      dateAdded: data.dateAdded.present ? data.dateAdded.value : this.dateAdded,
      url: data.url.present ? data.url.value : this.url,
      title: data.title.present ? data.title.value : this.title,
      artist: data.artist.present ? data.artist.value : this.artist,
      author: data.author.present ? data.author.value : this.author,
      description: data.description.present
          ? data.description.value
          : this.description,
      genre: data.genre.present ? data.genre.value : this.genre,
      status: data.status.present ? data.status.value : this.status,
      thumbnailUrl: data.thumbnailUrl.present
          ? data.thumbnailUrl.value
          : this.thumbnailUrl,
      updateStrategy: data.updateStrategy.present
          ? data.updateStrategy.value
          : this.updateStrategy,
      initialized: data.initialized.present
          ? data.initialized.value
          : this.initialized,
      lastModifiedAt: data.lastModifiedAt.present
          ? data.lastModifiedAt.value
          : this.lastModifiedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('DbManga(')
          ..write('id: $id, ')
          ..write('sourceId: $sourceId, ')
          ..write('favorite: $favorite, ')
          ..write('fetchInterval: $fetchInterval, ')
          ..write('dateAdded: $dateAdded, ')
          ..write('url: $url, ')
          ..write('title: $title, ')
          ..write('artist: $artist, ')
          ..write('author: $author, ')
          ..write('description: $description, ')
          ..write('genre: $genre, ')
          ..write('status: $status, ')
          ..write('thumbnailUrl: $thumbnailUrl, ')
          ..write('updateStrategy: $updateStrategy, ')
          ..write('initialized: $initialized, ')
          ..write('lastModifiedAt: $lastModifiedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    sourceId,
    favorite,
    fetchInterval,
    dateAdded,
    url,
    title,
    artist,
    author,
    description,
    genre,
    status,
    thumbnailUrl,
    updateStrategy,
    initialized,
    lastModifiedAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is i1.DbManga &&
          other.id == this.id &&
          other.sourceId == this.sourceId &&
          other.favorite == this.favorite &&
          other.fetchInterval == this.fetchInterval &&
          other.dateAdded == this.dateAdded &&
          other.url == this.url &&
          other.title == this.title &&
          other.artist == this.artist &&
          other.author == this.author &&
          other.description == this.description &&
          other.genre == this.genre &&
          other.status == this.status &&
          other.thumbnailUrl == this.thumbnailUrl &&
          other.updateStrategy == this.updateStrategy &&
          other.initialized == this.initialized &&
          other.lastModifiedAt == this.lastModifiedAt);
}

class DbMangasCompanion extends i0.UpdateCompanion<i1.DbManga> {
  final i0.Value<int> id;
  final i0.Value<String> sourceId;
  final i0.Value<bool> favorite;
  final i0.Value<int> fetchInterval;
  final i0.Value<DateTime?> dateAdded;
  final i0.Value<String> url;
  final i0.Value<String> title;
  final i0.Value<String?> artist;
  final i0.Value<String?> author;
  final i0.Value<String?> description;
  final i0.Value<String?> genre;
  final i0.Value<i2.MangaStatus> status;
  final i0.Value<String?> thumbnailUrl;
  final i0.Value<i3.UpdateStrategy> updateStrategy;
  final i0.Value<bool> initialized;
  final i0.Value<DateTime?> lastModifiedAt;
  const DbMangasCompanion({
    this.id = const i0.Value.absent(),
    this.sourceId = const i0.Value.absent(),
    this.favorite = const i0.Value.absent(),
    this.fetchInterval = const i0.Value.absent(),
    this.dateAdded = const i0.Value.absent(),
    this.url = const i0.Value.absent(),
    this.title = const i0.Value.absent(),
    this.artist = const i0.Value.absent(),
    this.author = const i0.Value.absent(),
    this.description = const i0.Value.absent(),
    this.genre = const i0.Value.absent(),
    this.status = const i0.Value.absent(),
    this.thumbnailUrl = const i0.Value.absent(),
    this.updateStrategy = const i0.Value.absent(),
    this.initialized = const i0.Value.absent(),
    this.lastModifiedAt = const i0.Value.absent(),
  });
  DbMangasCompanion.insert({
    this.id = const i0.Value.absent(),
    required String sourceId,
    this.favorite = const i0.Value.absent(),
    this.fetchInterval = const i0.Value.absent(),
    this.dateAdded = const i0.Value.absent(),
    required String url,
    required String title,
    this.artist = const i0.Value.absent(),
    this.author = const i0.Value.absent(),
    this.description = const i0.Value.absent(),
    this.genre = const i0.Value.absent(),
    this.status = const i0.Value.absent(),
    this.thumbnailUrl = const i0.Value.absent(),
    required i3.UpdateStrategy updateStrategy,
    this.initialized = const i0.Value.absent(),
    this.lastModifiedAt = const i0.Value.absent(),
  }) : sourceId = i0.Value(sourceId),
       url = i0.Value(url),
       title = i0.Value(title),
       updateStrategy = i0.Value(updateStrategy);
  static i0.Insertable<i1.DbManga> custom({
    i0.Expression<int>? id,
    i0.Expression<String>? sourceId,
    i0.Expression<bool>? favorite,
    i0.Expression<int>? fetchInterval,
    i0.Expression<DateTime>? dateAdded,
    i0.Expression<String>? url,
    i0.Expression<String>? title,
    i0.Expression<String>? artist,
    i0.Expression<String>? author,
    i0.Expression<String>? description,
    i0.Expression<String>? genre,
    i0.Expression<int>? status,
    i0.Expression<String>? thumbnailUrl,
    i0.Expression<int>? updateStrategy,
    i0.Expression<bool>? initialized,
    i0.Expression<DateTime>? lastModifiedAt,
  }) {
    return i0.RawValuesInsertable({
      if (id != null) 'id': id,
      if (sourceId != null) 'source_id': sourceId,
      if (favorite != null) 'favorite': favorite,
      if (fetchInterval != null) 'fetch_interval': fetchInterval,
      if (dateAdded != null) 'date_added': dateAdded,
      if (url != null) 'url': url,
      if (title != null) 'title': title,
      if (artist != null) 'artist': artist,
      if (author != null) 'author': author,
      if (description != null) 'description': description,
      if (genre != null) 'genre': genre,
      if (status != null) 'status': status,
      if (thumbnailUrl != null) 'thumbnail_url': thumbnailUrl,
      if (updateStrategy != null) 'update_strategy': updateStrategy,
      if (initialized != null) 'initialized': initialized,
      if (lastModifiedAt != null) 'last_modified_at': lastModifiedAt,
    });
  }

  i1.DbMangasCompanion copyWith({
    i0.Value<int>? id,
    i0.Value<String>? sourceId,
    i0.Value<bool>? favorite,
    i0.Value<int>? fetchInterval,
    i0.Value<DateTime?>? dateAdded,
    i0.Value<String>? url,
    i0.Value<String>? title,
    i0.Value<String?>? artist,
    i0.Value<String?>? author,
    i0.Value<String?>? description,
    i0.Value<String?>? genre,
    i0.Value<i2.MangaStatus>? status,
    i0.Value<String?>? thumbnailUrl,
    i0.Value<i3.UpdateStrategy>? updateStrategy,
    i0.Value<bool>? initialized,
    i0.Value<DateTime?>? lastModifiedAt,
  }) {
    return i1.DbMangasCompanion(
      id: id ?? this.id,
      sourceId: sourceId ?? this.sourceId,
      favorite: favorite ?? this.favorite,
      fetchInterval: fetchInterval ?? this.fetchInterval,
      dateAdded: dateAdded ?? this.dateAdded,
      url: url ?? this.url,
      title: title ?? this.title,
      artist: artist ?? this.artist,
      author: author ?? this.author,
      description: description ?? this.description,
      genre: genre ?? this.genre,
      status: status ?? this.status,
      thumbnailUrl: thumbnailUrl ?? this.thumbnailUrl,
      updateStrategy: updateStrategy ?? this.updateStrategy,
      initialized: initialized ?? this.initialized,
      lastModifiedAt: lastModifiedAt ?? this.lastModifiedAt,
    );
  }

  @override
  Map<String, i0.Expression> toColumns(bool nullToAbsent) {
    final map = <String, i0.Expression>{};
    if (id.present) {
      map['id'] = i0.Variable<int>(id.value);
    }
    if (sourceId.present) {
      map['source_id'] = i0.Variable<String>(sourceId.value);
    }
    if (favorite.present) {
      map['favorite'] = i0.Variable<bool>(favorite.value);
    }
    if (fetchInterval.present) {
      map['fetch_interval'] = i0.Variable<int>(fetchInterval.value);
    }
    if (dateAdded.present) {
      map['date_added'] = i0.Variable<DateTime>(dateAdded.value);
    }
    if (url.present) {
      map['url'] = i0.Variable<String>(url.value);
    }
    if (title.present) {
      map['title'] = i0.Variable<String>(title.value);
    }
    if (artist.present) {
      map['artist'] = i0.Variable<String>(artist.value);
    }
    if (author.present) {
      map['author'] = i0.Variable<String>(author.value);
    }
    if (description.present) {
      map['description'] = i0.Variable<String>(description.value);
    }
    if (genre.present) {
      map['genre'] = i0.Variable<String>(genre.value);
    }
    if (status.present) {
      map['status'] = i0.Variable<int>(
        i1.$DbMangasTable.$converterstatus.toSql(status.value),
      );
    }
    if (thumbnailUrl.present) {
      map['thumbnail_url'] = i0.Variable<String>(thumbnailUrl.value);
    }
    if (updateStrategy.present) {
      map['update_strategy'] = i0.Variable<int>(
        i1.$DbMangasTable.$converterupdateStrategy.toSql(updateStrategy.value),
      );
    }
    if (initialized.present) {
      map['initialized'] = i0.Variable<bool>(initialized.value);
    }
    if (lastModifiedAt.present) {
      map['last_modified_at'] = i0.Variable<DateTime>(lastModifiedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DbMangasCompanion(')
          ..write('id: $id, ')
          ..write('sourceId: $sourceId, ')
          ..write('favorite: $favorite, ')
          ..write('fetchInterval: $fetchInterval, ')
          ..write('dateAdded: $dateAdded, ')
          ..write('url: $url, ')
          ..write('title: $title, ')
          ..write('artist: $artist, ')
          ..write('author: $author, ')
          ..write('description: $description, ')
          ..write('genre: $genre, ')
          ..write('status: $status, ')
          ..write('thumbnailUrl: $thumbnailUrl, ')
          ..write('updateStrategy: $updateStrategy, ')
          ..write('initialized: $initialized, ')
          ..write('lastModifiedAt: $lastModifiedAt')
          ..write(')'))
        .toString();
  }
}

i0.Index get mangaFavorite => i0.Index(
  'manga_favorite',
  'CREATE INDEX manga_favorite ON db_mangas (favorite)',
);
i0.Index get mangaUrl =>
    i0.Index('manga_url', 'CREATE INDEX manga_url ON db_mangas (url)');
i0.Index get mangaTitle =>
    i0.Index('manga_title', 'CREATE INDEX manga_title ON db_mangas (title)');
