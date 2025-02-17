// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $DbMangasTable extends DbMangas with TableInfo<$DbMangasTable, DbManga> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DbMangasTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _sourceIdMeta =
      const VerificationMeta('sourceId');
  @override
  late final GeneratedColumn<String> sourceId = GeneratedColumn<String>(
      'source_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _favoriteMeta =
      const VerificationMeta('favorite');
  @override
  late final GeneratedColumn<bool> favorite = GeneratedColumn<bool>(
      'favorite', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("favorite" IN (0, 1))'),
      defaultValue: const Constant(false));
  static const VerificationMeta _fetchIntervalMeta =
      const VerificationMeta('fetchInterval');
  @override
  late final GeneratedColumn<int> fetchInterval = GeneratedColumn<int>(
      'fetch_interval', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  static const VerificationMeta _dateAddedMeta =
      const VerificationMeta('dateAdded');
  @override
  late final GeneratedColumn<DateTime> dateAdded = GeneratedColumn<DateTime>(
      'date_added', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _urlMeta = const VerificationMeta('url');
  @override
  late final GeneratedColumn<String> url = GeneratedColumn<String>(
      'url', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
      'title', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _artistMeta = const VerificationMeta('artist');
  @override
  late final GeneratedColumn<String> artist = GeneratedColumn<String>(
      'artist', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _authorMeta = const VerificationMeta('author');
  @override
  late final GeneratedColumn<String> author = GeneratedColumn<String>(
      'author', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
      'description', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _genreMeta = const VerificationMeta('genre');
  @override
  late final GeneratedColumn<String> genre = GeneratedColumn<String>(
      'genre', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumnWithTypeConverter<MangaStatus, int> status =
      GeneratedColumn<int>('status', aliasedName, false,
              type: DriftSqlType.int,
              requiredDuringInsert: false,
              defaultValue: const Constant(0))
          .withConverter<MangaStatus>($DbMangasTable.$converterstatus);
  static const VerificationMeta _thumbnailUrlMeta =
      const VerificationMeta('thumbnailUrl');
  @override
  late final GeneratedColumn<String> thumbnailUrl = GeneratedColumn<String>(
      'thumbnail_url', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _updateStrategyMeta =
      const VerificationMeta('updateStrategy');
  @override
  late final GeneratedColumnWithTypeConverter<UpdateStrategy, int>
      updateStrategy = GeneratedColumn<int>(
              'update_strategy', aliasedName, false,
              type: DriftSqlType.int, requiredDuringInsert: true)
          .withConverter<UpdateStrategy>(
              $DbMangasTable.$converterupdateStrategy);
  static const VerificationMeta _initializedMeta =
      const VerificationMeta('initialized');
  @override
  late final GeneratedColumn<bool> initialized = GeneratedColumn<bool>(
      'initialized', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("initialized" IN (0, 1))'),
      defaultValue: const Constant(false));
  static const VerificationMeta _lastModifiedAtMeta =
      const VerificationMeta('lastModifiedAt');
  @override
  late final GeneratedColumn<DateTime> lastModifiedAt =
      GeneratedColumn<DateTime>('last_modified_at', aliasedName, true,
          type: DriftSqlType.dateTime, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
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
        lastModifiedAt
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'db_mangas';
  @override
  VerificationContext validateIntegrity(Insertable<DbManga> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('source_id')) {
      context.handle(_sourceIdMeta,
          sourceId.isAcceptableOrUnknown(data['source_id']!, _sourceIdMeta));
    } else if (isInserting) {
      context.missing(_sourceIdMeta);
    }
    if (data.containsKey('favorite')) {
      context.handle(_favoriteMeta,
          favorite.isAcceptableOrUnknown(data['favorite']!, _favoriteMeta));
    }
    if (data.containsKey('fetch_interval')) {
      context.handle(
          _fetchIntervalMeta,
          fetchInterval.isAcceptableOrUnknown(
              data['fetch_interval']!, _fetchIntervalMeta));
    }
    if (data.containsKey('date_added')) {
      context.handle(_dateAddedMeta,
          dateAdded.isAcceptableOrUnknown(data['date_added']!, _dateAddedMeta));
    }
    if (data.containsKey('url')) {
      context.handle(
          _urlMeta, url.isAcceptableOrUnknown(data['url']!, _urlMeta));
    } else if (isInserting) {
      context.missing(_urlMeta);
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('artist')) {
      context.handle(_artistMeta,
          artist.isAcceptableOrUnknown(data['artist']!, _artistMeta));
    }
    if (data.containsKey('author')) {
      context.handle(_authorMeta,
          author.isAcceptableOrUnknown(data['author']!, _authorMeta));
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    }
    if (data.containsKey('genre')) {
      context.handle(
          _genreMeta, genre.isAcceptableOrUnknown(data['genre']!, _genreMeta));
    }
    context.handle(_statusMeta, const VerificationResult.success());
    if (data.containsKey('thumbnail_url')) {
      context.handle(
          _thumbnailUrlMeta,
          thumbnailUrl.isAcceptableOrUnknown(
              data['thumbnail_url']!, _thumbnailUrlMeta));
    }
    context.handle(_updateStrategyMeta, const VerificationResult.success());
    if (data.containsKey('initialized')) {
      context.handle(
          _initializedMeta,
          initialized.isAcceptableOrUnknown(
              data['initialized']!, _initializedMeta));
    }
    if (data.containsKey('last_modified_at')) {
      context.handle(
          _lastModifiedAtMeta,
          lastModifiedAt.isAcceptableOrUnknown(
              data['last_modified_at']!, _lastModifiedAtMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  List<Set<GeneratedColumn>> get uniqueKeys => [
        {sourceId, url},
      ];
  @override
  DbManga map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DbManga(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      sourceId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}source_id'])!,
      favorite: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}favorite'])!,
      fetchInterval: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}fetch_interval'])!,
      dateAdded: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}date_added']),
      url: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}url'])!,
      title: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title'])!,
      artist: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}artist']),
      author: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}author']),
      description: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}description']),
      genre: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}genre']),
      status: $DbMangasTable.$converterstatus.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}status'])!),
      thumbnailUrl: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}thumbnail_url']),
      updateStrategy: $DbMangasTable.$converterupdateStrategy.fromSql(
          attachedDatabase.typeMapping.read(
              DriftSqlType.int, data['${effectivePrefix}update_strategy'])!),
      initialized: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}initialized'])!,
      lastModifiedAt: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}last_modified_at']),
    );
  }

  @override
  $DbMangasTable createAlias(String alias) {
    return $DbMangasTable(attachedDatabase, alias);
  }

  static JsonTypeConverter2<MangaStatus, int, int> $converterstatus =
      const EnumIndexConverter<MangaStatus>(MangaStatus.values);
  static JsonTypeConverter2<UpdateStrategy, int, int> $converterupdateStrategy =
      const EnumIndexConverter<UpdateStrategy>(UpdateStrategy.values);
}

class DbManga extends DataClass implements Insertable<DbManga> {
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
  final MangaStatus status;
  final String? thumbnailUrl;
  final UpdateStrategy updateStrategy;
  final bool initialized;
  final DateTime? lastModifiedAt;
  const DbManga(
      {required this.id,
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
      this.lastModifiedAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['source_id'] = Variable<String>(sourceId);
    map['favorite'] = Variable<bool>(favorite);
    map['fetch_interval'] = Variable<int>(fetchInterval);
    if (!nullToAbsent || dateAdded != null) {
      map['date_added'] = Variable<DateTime>(dateAdded);
    }
    map['url'] = Variable<String>(url);
    map['title'] = Variable<String>(title);
    if (!nullToAbsent || artist != null) {
      map['artist'] = Variable<String>(artist);
    }
    if (!nullToAbsent || author != null) {
      map['author'] = Variable<String>(author);
    }
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    if (!nullToAbsent || genre != null) {
      map['genre'] = Variable<String>(genre);
    }
    {
      map['status'] =
          Variable<int>($DbMangasTable.$converterstatus.toSql(status));
    }
    if (!nullToAbsent || thumbnailUrl != null) {
      map['thumbnail_url'] = Variable<String>(thumbnailUrl);
    }
    {
      map['update_strategy'] = Variable<int>(
          $DbMangasTable.$converterupdateStrategy.toSql(updateStrategy));
    }
    map['initialized'] = Variable<bool>(initialized);
    if (!nullToAbsent || lastModifiedAt != null) {
      map['last_modified_at'] = Variable<DateTime>(lastModifiedAt);
    }
    return map;
  }

  DbMangasCompanion toCompanion(bool nullToAbsent) {
    return DbMangasCompanion(
      id: Value(id),
      sourceId: Value(sourceId),
      favorite: Value(favorite),
      fetchInterval: Value(fetchInterval),
      dateAdded: dateAdded == null && nullToAbsent
          ? const Value.absent()
          : Value(dateAdded),
      url: Value(url),
      title: Value(title),
      artist:
          artist == null && nullToAbsent ? const Value.absent() : Value(artist),
      author:
          author == null && nullToAbsent ? const Value.absent() : Value(author),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      genre:
          genre == null && nullToAbsent ? const Value.absent() : Value(genre),
      status: Value(status),
      thumbnailUrl: thumbnailUrl == null && nullToAbsent
          ? const Value.absent()
          : Value(thumbnailUrl),
      updateStrategy: Value(updateStrategy),
      initialized: Value(initialized),
      lastModifiedAt: lastModifiedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(lastModifiedAt),
    );
  }

  factory DbManga.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
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
      status: $DbMangasTable.$converterstatus
          .fromJson(serializer.fromJson<int>(json['status'])),
      thumbnailUrl: serializer.fromJson<String?>(json['thumbnailUrl']),
      updateStrategy: $DbMangasTable.$converterupdateStrategy
          .fromJson(serializer.fromJson<int>(json['updateStrategy'])),
      initialized: serializer.fromJson<bool>(json['initialized']),
      lastModifiedAt: serializer.fromJson<DateTime?>(json['lastModifiedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
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
      'status': serializer
          .toJson<int>($DbMangasTable.$converterstatus.toJson(status)),
      'thumbnailUrl': serializer.toJson<String?>(thumbnailUrl),
      'updateStrategy': serializer.toJson<int>(
          $DbMangasTable.$converterupdateStrategy.toJson(updateStrategy)),
      'initialized': serializer.toJson<bool>(initialized),
      'lastModifiedAt': serializer.toJson<DateTime?>(lastModifiedAt),
    };
  }

  DbManga copyWith(
          {int? id,
          String? sourceId,
          bool? favorite,
          int? fetchInterval,
          Value<DateTime?> dateAdded = const Value.absent(),
          String? url,
          String? title,
          Value<String?> artist = const Value.absent(),
          Value<String?> author = const Value.absent(),
          Value<String?> description = const Value.absent(),
          Value<String?> genre = const Value.absent(),
          MangaStatus? status,
          Value<String?> thumbnailUrl = const Value.absent(),
          UpdateStrategy? updateStrategy,
          bool? initialized,
          Value<DateTime?> lastModifiedAt = const Value.absent()}) =>
      DbManga(
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
        thumbnailUrl:
            thumbnailUrl.present ? thumbnailUrl.value : this.thumbnailUrl,
        updateStrategy: updateStrategy ?? this.updateStrategy,
        initialized: initialized ?? this.initialized,
        lastModifiedAt:
            lastModifiedAt.present ? lastModifiedAt.value : this.lastModifiedAt,
      );
  DbManga copyWithCompanion(DbMangasCompanion data) {
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
      description:
          data.description.present ? data.description.value : this.description,
      genre: data.genre.present ? data.genre.value : this.genre,
      status: data.status.present ? data.status.value : this.status,
      thumbnailUrl: data.thumbnailUrl.present
          ? data.thumbnailUrl.value
          : this.thumbnailUrl,
      updateStrategy: data.updateStrategy.present
          ? data.updateStrategy.value
          : this.updateStrategy,
      initialized:
          data.initialized.present ? data.initialized.value : this.initialized,
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
      lastModifiedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DbManga &&
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

class DbMangasCompanion extends UpdateCompanion<DbManga> {
  final Value<int> id;
  final Value<String> sourceId;
  final Value<bool> favorite;
  final Value<int> fetchInterval;
  final Value<DateTime?> dateAdded;
  final Value<String> url;
  final Value<String> title;
  final Value<String?> artist;
  final Value<String?> author;
  final Value<String?> description;
  final Value<String?> genre;
  final Value<MangaStatus> status;
  final Value<String?> thumbnailUrl;
  final Value<UpdateStrategy> updateStrategy;
  final Value<bool> initialized;
  final Value<DateTime?> lastModifiedAt;
  const DbMangasCompanion({
    this.id = const Value.absent(),
    this.sourceId = const Value.absent(),
    this.favorite = const Value.absent(),
    this.fetchInterval = const Value.absent(),
    this.dateAdded = const Value.absent(),
    this.url = const Value.absent(),
    this.title = const Value.absent(),
    this.artist = const Value.absent(),
    this.author = const Value.absent(),
    this.description = const Value.absent(),
    this.genre = const Value.absent(),
    this.status = const Value.absent(),
    this.thumbnailUrl = const Value.absent(),
    this.updateStrategy = const Value.absent(),
    this.initialized = const Value.absent(),
    this.lastModifiedAt = const Value.absent(),
  });
  DbMangasCompanion.insert({
    this.id = const Value.absent(),
    required String sourceId,
    this.favorite = const Value.absent(),
    this.fetchInterval = const Value.absent(),
    this.dateAdded = const Value.absent(),
    required String url,
    required String title,
    this.artist = const Value.absent(),
    this.author = const Value.absent(),
    this.description = const Value.absent(),
    this.genre = const Value.absent(),
    this.status = const Value.absent(),
    this.thumbnailUrl = const Value.absent(),
    required UpdateStrategy updateStrategy,
    this.initialized = const Value.absent(),
    this.lastModifiedAt = const Value.absent(),
  })  : sourceId = Value(sourceId),
        url = Value(url),
        title = Value(title),
        updateStrategy = Value(updateStrategy);
  static Insertable<DbManga> custom({
    Expression<int>? id,
    Expression<String>? sourceId,
    Expression<bool>? favorite,
    Expression<int>? fetchInterval,
    Expression<DateTime>? dateAdded,
    Expression<String>? url,
    Expression<String>? title,
    Expression<String>? artist,
    Expression<String>? author,
    Expression<String>? description,
    Expression<String>? genre,
    Expression<int>? status,
    Expression<String>? thumbnailUrl,
    Expression<int>? updateStrategy,
    Expression<bool>? initialized,
    Expression<DateTime>? lastModifiedAt,
  }) {
    return RawValuesInsertable({
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

  DbMangasCompanion copyWith(
      {Value<int>? id,
      Value<String>? sourceId,
      Value<bool>? favorite,
      Value<int>? fetchInterval,
      Value<DateTime?>? dateAdded,
      Value<String>? url,
      Value<String>? title,
      Value<String?>? artist,
      Value<String?>? author,
      Value<String?>? description,
      Value<String?>? genre,
      Value<MangaStatus>? status,
      Value<String?>? thumbnailUrl,
      Value<UpdateStrategy>? updateStrategy,
      Value<bool>? initialized,
      Value<DateTime?>? lastModifiedAt}) {
    return DbMangasCompanion(
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
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (sourceId.present) {
      map['source_id'] = Variable<String>(sourceId.value);
    }
    if (favorite.present) {
      map['favorite'] = Variable<bool>(favorite.value);
    }
    if (fetchInterval.present) {
      map['fetch_interval'] = Variable<int>(fetchInterval.value);
    }
    if (dateAdded.present) {
      map['date_added'] = Variable<DateTime>(dateAdded.value);
    }
    if (url.present) {
      map['url'] = Variable<String>(url.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (artist.present) {
      map['artist'] = Variable<String>(artist.value);
    }
    if (author.present) {
      map['author'] = Variable<String>(author.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (genre.present) {
      map['genre'] = Variable<String>(genre.value);
    }
    if (status.present) {
      map['status'] =
          Variable<int>($DbMangasTable.$converterstatus.toSql(status.value));
    }
    if (thumbnailUrl.present) {
      map['thumbnail_url'] = Variable<String>(thumbnailUrl.value);
    }
    if (updateStrategy.present) {
      map['update_strategy'] = Variable<int>(
          $DbMangasTable.$converterupdateStrategy.toSql(updateStrategy.value));
    }
    if (initialized.present) {
      map['initialized'] = Variable<bool>(initialized.value);
    }
    if (lastModifiedAt.present) {
      map['last_modified_at'] = Variable<DateTime>(lastModifiedAt.value);
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

class $DbChaptersTable extends DbChapters
    with TableInfo<$DbChaptersTable, DbChapter> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DbChaptersTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _mangaIdMeta =
      const VerificationMeta('mangaId');
  @override
  late final GeneratedColumn<int> mangaId = GeneratedColumn<int>(
      'manga_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES db_mangas (id) ON DELETE CASCADE'));
  static const VerificationMeta _urlMeta = const VerificationMeta('url');
  @override
  late final GeneratedColumn<String> url = GeneratedColumn<String>(
      'url', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _dateUploadMeta =
      const VerificationMeta('dateUpload');
  @override
  late final GeneratedColumn<DateTime> dateUpload = GeneratedColumn<DateTime>(
      'date_upload', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _chapterNumberMeta =
      const VerificationMeta('chapterNumber');
  @override
  late final GeneratedColumn<double> chapterNumber = GeneratedColumn<double>(
      'chapter_number', aliasedName, false,
      type: DriftSqlType.double,
      requiredDuringInsert: false,
      defaultValue: const Constant(-1));
  static const VerificationMeta _scanlatorMeta =
      const VerificationMeta('scanlator');
  @override
  late final GeneratedColumn<String> scanlator = GeneratedColumn<String>(
      'scanlator', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _readMeta = const VerificationMeta('read');
  @override
  late final GeneratedColumn<bool> read = GeneratedColumn<bool>(
      'read', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("read" IN (0, 1))'),
      defaultValue: const Constant(false));
  static const VerificationMeta _downloadedMeta =
      const VerificationMeta('downloaded');
  @override
  late final GeneratedColumn<bool> downloaded = GeneratedColumn<bool>(
      'downloaded', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("downloaded" IN (0, 1))'),
      defaultValue: const Constant(false));
  static const VerificationMeta _bookmarkMeta =
      const VerificationMeta('bookmark');
  @override
  late final GeneratedColumn<bool> bookmark = GeneratedColumn<bool>(
      'bookmark', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("bookmark" IN (0, 1))'),
      defaultValue: const Constant(false));
  static const VerificationMeta _lastPageReadMeta =
      const VerificationMeta('lastPageRead');
  @override
  late final GeneratedColumn<int> lastPageRead = GeneratedColumn<int>(
      'last_page_read', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  static const VerificationMeta _dateFetchMeta =
      const VerificationMeta('dateFetch');
  @override
  late final GeneratedColumn<DateTime> dateFetch = GeneratedColumn<DateTime>(
      'date_fetch', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _lastModifiedMeta =
      const VerificationMeta('lastModified');
  @override
  late final GeneratedColumn<DateTime> lastModified = GeneratedColumn<DateTime>(
      'last_modified', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
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
        lastModified
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'db_chapters';
  @override
  VerificationContext validateIntegrity(Insertable<DbChapter> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('manga_id')) {
      context.handle(_mangaIdMeta,
          mangaId.isAcceptableOrUnknown(data['manga_id']!, _mangaIdMeta));
    } else if (isInserting) {
      context.missing(_mangaIdMeta);
    }
    if (data.containsKey('url')) {
      context.handle(
          _urlMeta, url.isAcceptableOrUnknown(data['url']!, _urlMeta));
    } else if (isInserting) {
      context.missing(_urlMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('date_upload')) {
      context.handle(
          _dateUploadMeta,
          dateUpload.isAcceptableOrUnknown(
              data['date_upload']!, _dateUploadMeta));
    }
    if (data.containsKey('chapter_number')) {
      context.handle(
          _chapterNumberMeta,
          chapterNumber.isAcceptableOrUnknown(
              data['chapter_number']!, _chapterNumberMeta));
    }
    if (data.containsKey('scanlator')) {
      context.handle(_scanlatorMeta,
          scanlator.isAcceptableOrUnknown(data['scanlator']!, _scanlatorMeta));
    }
    if (data.containsKey('read')) {
      context.handle(
          _readMeta, read.isAcceptableOrUnknown(data['read']!, _readMeta));
    }
    if (data.containsKey('downloaded')) {
      context.handle(
          _downloadedMeta,
          downloaded.isAcceptableOrUnknown(
              data['downloaded']!, _downloadedMeta));
    }
    if (data.containsKey('bookmark')) {
      context.handle(_bookmarkMeta,
          bookmark.isAcceptableOrUnknown(data['bookmark']!, _bookmarkMeta));
    }
    if (data.containsKey('last_page_read')) {
      context.handle(
          _lastPageReadMeta,
          lastPageRead.isAcceptableOrUnknown(
              data['last_page_read']!, _lastPageReadMeta));
    }
    if (data.containsKey('date_fetch')) {
      context.handle(_dateFetchMeta,
          dateFetch.isAcceptableOrUnknown(data['date_fetch']!, _dateFetchMeta));
    }
    if (data.containsKey('last_modified')) {
      context.handle(
          _lastModifiedMeta,
          lastModified.isAcceptableOrUnknown(
              data['last_modified']!, _lastModifiedMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  List<Set<GeneratedColumn>> get uniqueKeys => [
        {mangaId, url},
      ];
  @override
  DbChapter map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DbChapter(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      mangaId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}manga_id'])!,
      url: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}url'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      dateUpload: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}date_upload']),
      chapterNumber: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}chapter_number'])!,
      scanlator: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}scanlator']),
      read: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}read'])!,
      downloaded: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}downloaded'])!,
      bookmark: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}bookmark'])!,
      lastPageRead: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}last_page_read'])!,
      dateFetch: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}date_fetch']),
      lastModified: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}last_modified']),
    );
  }

  @override
  $DbChaptersTable createAlias(String alias) {
    return $DbChaptersTable(attachedDatabase, alias);
  }
}

class DbChapter extends DataClass implements Insertable<DbChapter> {
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
  const DbChapter(
      {required this.id,
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
      this.lastModified});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['manga_id'] = Variable<int>(mangaId);
    map['url'] = Variable<String>(url);
    map['name'] = Variable<String>(name);
    if (!nullToAbsent || dateUpload != null) {
      map['date_upload'] = Variable<DateTime>(dateUpload);
    }
    map['chapter_number'] = Variable<double>(chapterNumber);
    if (!nullToAbsent || scanlator != null) {
      map['scanlator'] = Variable<String>(scanlator);
    }
    map['read'] = Variable<bool>(read);
    map['downloaded'] = Variable<bool>(downloaded);
    map['bookmark'] = Variable<bool>(bookmark);
    map['last_page_read'] = Variable<int>(lastPageRead);
    if (!nullToAbsent || dateFetch != null) {
      map['date_fetch'] = Variable<DateTime>(dateFetch);
    }
    if (!nullToAbsent || lastModified != null) {
      map['last_modified'] = Variable<DateTime>(lastModified);
    }
    return map;
  }

  DbChaptersCompanion toCompanion(bool nullToAbsent) {
    return DbChaptersCompanion(
      id: Value(id),
      mangaId: Value(mangaId),
      url: Value(url),
      name: Value(name),
      dateUpload: dateUpload == null && nullToAbsent
          ? const Value.absent()
          : Value(dateUpload),
      chapterNumber: Value(chapterNumber),
      scanlator: scanlator == null && nullToAbsent
          ? const Value.absent()
          : Value(scanlator),
      read: Value(read),
      downloaded: Value(downloaded),
      bookmark: Value(bookmark),
      lastPageRead: Value(lastPageRead),
      dateFetch: dateFetch == null && nullToAbsent
          ? const Value.absent()
          : Value(dateFetch),
      lastModified: lastModified == null && nullToAbsent
          ? const Value.absent()
          : Value(lastModified),
    );
  }

  factory DbChapter.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
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
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
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

  DbChapter copyWith(
          {int? id,
          int? mangaId,
          String? url,
          String? name,
          Value<DateTime?> dateUpload = const Value.absent(),
          double? chapterNumber,
          Value<String?> scanlator = const Value.absent(),
          bool? read,
          bool? downloaded,
          bool? bookmark,
          int? lastPageRead,
          Value<DateTime?> dateFetch = const Value.absent(),
          Value<DateTime?> lastModified = const Value.absent()}) =>
      DbChapter(
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
        lastModified:
            lastModified.present ? lastModified.value : this.lastModified,
      );
  DbChapter copyWithCompanion(DbChaptersCompanion data) {
    return DbChapter(
      id: data.id.present ? data.id.value : this.id,
      mangaId: data.mangaId.present ? data.mangaId.value : this.mangaId,
      url: data.url.present ? data.url.value : this.url,
      name: data.name.present ? data.name.value : this.name,
      dateUpload:
          data.dateUpload.present ? data.dateUpload.value : this.dateUpload,
      chapterNumber: data.chapterNumber.present
          ? data.chapterNumber.value
          : this.chapterNumber,
      scanlator: data.scanlator.present ? data.scanlator.value : this.scanlator,
      read: data.read.present ? data.read.value : this.read,
      downloaded:
          data.downloaded.present ? data.downloaded.value : this.downloaded,
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
      lastModified);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DbChapter &&
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

class DbChaptersCompanion extends UpdateCompanion<DbChapter> {
  final Value<int> id;
  final Value<int> mangaId;
  final Value<String> url;
  final Value<String> name;
  final Value<DateTime?> dateUpload;
  final Value<double> chapterNumber;
  final Value<String?> scanlator;
  final Value<bool> read;
  final Value<bool> downloaded;
  final Value<bool> bookmark;
  final Value<int> lastPageRead;
  final Value<DateTime?> dateFetch;
  final Value<DateTime?> lastModified;
  const DbChaptersCompanion({
    this.id = const Value.absent(),
    this.mangaId = const Value.absent(),
    this.url = const Value.absent(),
    this.name = const Value.absent(),
    this.dateUpload = const Value.absent(),
    this.chapterNumber = const Value.absent(),
    this.scanlator = const Value.absent(),
    this.read = const Value.absent(),
    this.downloaded = const Value.absent(),
    this.bookmark = const Value.absent(),
    this.lastPageRead = const Value.absent(),
    this.dateFetch = const Value.absent(),
    this.lastModified = const Value.absent(),
  });
  DbChaptersCompanion.insert({
    this.id = const Value.absent(),
    required int mangaId,
    required String url,
    required String name,
    this.dateUpload = const Value.absent(),
    this.chapterNumber = const Value.absent(),
    this.scanlator = const Value.absent(),
    this.read = const Value.absent(),
    this.downloaded = const Value.absent(),
    this.bookmark = const Value.absent(),
    this.lastPageRead = const Value.absent(),
    this.dateFetch = const Value.absent(),
    this.lastModified = const Value.absent(),
  })  : mangaId = Value(mangaId),
        url = Value(url),
        name = Value(name);
  static Insertable<DbChapter> custom({
    Expression<int>? id,
    Expression<int>? mangaId,
    Expression<String>? url,
    Expression<String>? name,
    Expression<DateTime>? dateUpload,
    Expression<double>? chapterNumber,
    Expression<String>? scanlator,
    Expression<bool>? read,
    Expression<bool>? downloaded,
    Expression<bool>? bookmark,
    Expression<int>? lastPageRead,
    Expression<DateTime>? dateFetch,
    Expression<DateTime>? lastModified,
  }) {
    return RawValuesInsertable({
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

  DbChaptersCompanion copyWith(
      {Value<int>? id,
      Value<int>? mangaId,
      Value<String>? url,
      Value<String>? name,
      Value<DateTime?>? dateUpload,
      Value<double>? chapterNumber,
      Value<String?>? scanlator,
      Value<bool>? read,
      Value<bool>? downloaded,
      Value<bool>? bookmark,
      Value<int>? lastPageRead,
      Value<DateTime?>? dateFetch,
      Value<DateTime?>? lastModified}) {
    return DbChaptersCompanion(
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
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (mangaId.present) {
      map['manga_id'] = Variable<int>(mangaId.value);
    }
    if (url.present) {
      map['url'] = Variable<String>(url.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (dateUpload.present) {
      map['date_upload'] = Variable<DateTime>(dateUpload.value);
    }
    if (chapterNumber.present) {
      map['chapter_number'] = Variable<double>(chapterNumber.value);
    }
    if (scanlator.present) {
      map['scanlator'] = Variable<String>(scanlator.value);
    }
    if (read.present) {
      map['read'] = Variable<bool>(read.value);
    }
    if (downloaded.present) {
      map['downloaded'] = Variable<bool>(downloaded.value);
    }
    if (bookmark.present) {
      map['bookmark'] = Variable<bool>(bookmark.value);
    }
    if (lastPageRead.present) {
      map['last_page_read'] = Variable<int>(lastPageRead.value);
    }
    if (dateFetch.present) {
      map['date_fetch'] = Variable<DateTime>(dateFetch.value);
    }
    if (lastModified.present) {
      map['last_modified'] = Variable<DateTime>(lastModified.value);
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

class $DbReadingDirectionTable extends DbReadingDirection
    with TableInfo<$DbReadingDirectionTable, DbReadingDirectionData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DbReadingDirectionTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _mangaIdMeta =
      const VerificationMeta('mangaId');
  @override
  late final GeneratedColumn<int> mangaId = GeneratedColumn<int>(
      'manga_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES db_mangas (id) ON DELETE CASCADE'));
  static const VerificationMeta _directionMeta =
      const VerificationMeta('direction');
  @override
  late final GeneratedColumnWithTypeConverter<ReadingDirection, int> direction =
      GeneratedColumn<int>('direction', aliasedName, false,
              type: DriftSqlType.int, requiredDuringInsert: true)
          .withConverter<ReadingDirection>(
              $DbReadingDirectionTable.$converterdirection);
  @override
  List<GeneratedColumn> get $columns => [mangaId, direction];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'db_reading_direction';
  @override
  VerificationContext validateIntegrity(
      Insertable<DbReadingDirectionData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('manga_id')) {
      context.handle(_mangaIdMeta,
          mangaId.isAcceptableOrUnknown(data['manga_id']!, _mangaIdMeta));
    }
    context.handle(_directionMeta, const VerificationResult.success());
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {mangaId};
  @override
  DbReadingDirectionData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DbReadingDirectionData(
      mangaId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}manga_id'])!,
      direction: $DbReadingDirectionTable.$converterdirection.fromSql(
          attachedDatabase.typeMapping
              .read(DriftSqlType.int, data['${effectivePrefix}direction'])!),
    );
  }

  @override
  $DbReadingDirectionTable createAlias(String alias) {
    return $DbReadingDirectionTable(attachedDatabase, alias);
  }

  static JsonTypeConverter2<ReadingDirection, int, int> $converterdirection =
      const EnumIndexConverter<ReadingDirection>(ReadingDirection.values);
}

class DbReadingDirectionData extends DataClass
    implements Insertable<DbReadingDirectionData> {
  final int mangaId;
  final ReadingDirection direction;
  const DbReadingDirectionData(
      {required this.mangaId, required this.direction});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['manga_id'] = Variable<int>(mangaId);
    {
      map['direction'] = Variable<int>(
          $DbReadingDirectionTable.$converterdirection.toSql(direction));
    }
    return map;
  }

  DbReadingDirectionCompanion toCompanion(bool nullToAbsent) {
    return DbReadingDirectionCompanion(
      mangaId: Value(mangaId),
      direction: Value(direction),
    );
  }

  factory DbReadingDirectionData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DbReadingDirectionData(
      mangaId: serializer.fromJson<int>(json['mangaId']),
      direction: $DbReadingDirectionTable.$converterdirection
          .fromJson(serializer.fromJson<int>(json['direction'])),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'mangaId': serializer.toJson<int>(mangaId),
      'direction': serializer.toJson<int>(
          $DbReadingDirectionTable.$converterdirection.toJson(direction)),
    };
  }

  DbReadingDirectionData copyWith(
          {int? mangaId, ReadingDirection? direction}) =>
      DbReadingDirectionData(
        mangaId: mangaId ?? this.mangaId,
        direction: direction ?? this.direction,
      );
  DbReadingDirectionData copyWithCompanion(DbReadingDirectionCompanion data) {
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
      (other is DbReadingDirectionData &&
          other.mangaId == this.mangaId &&
          other.direction == this.direction);
}

class DbReadingDirectionCompanion
    extends UpdateCompanion<DbReadingDirectionData> {
  final Value<int> mangaId;
  final Value<ReadingDirection> direction;
  const DbReadingDirectionCompanion({
    this.mangaId = const Value.absent(),
    this.direction = const Value.absent(),
  });
  DbReadingDirectionCompanion.insert({
    this.mangaId = const Value.absent(),
    required ReadingDirection direction,
  }) : direction = Value(direction);
  static Insertable<DbReadingDirectionData> custom({
    Expression<int>? mangaId,
    Expression<int>? direction,
  }) {
    return RawValuesInsertable({
      if (mangaId != null) 'manga_id': mangaId,
      if (direction != null) 'direction': direction,
    });
  }

  DbReadingDirectionCompanion copyWith(
      {Value<int>? mangaId, Value<ReadingDirection>? direction}) {
    return DbReadingDirectionCompanion(
      mangaId: mangaId ?? this.mangaId,
      direction: direction ?? this.direction,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (mangaId.present) {
      map['manga_id'] = Variable<int>(mangaId.value);
    }
    if (direction.present) {
      map['direction'] = Variable<int>(
          $DbReadingDirectionTable.$converterdirection.toSql(direction.value));
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

class $DbCacheEntriesTable extends DbCacheEntries
    with TableInfo<$DbCacheEntriesTable, DbCacheEntry> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DbCacheEntriesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _keyMeta = const VerificationMeta('key');
  @override
  late final GeneratedColumn<String> key = GeneratedColumn<String>(
      'key', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _responseMeta =
      const VerificationMeta('response');
  @override
  late final GeneratedColumn<String> response = GeneratedColumn<String>(
      'response', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _expiryMeta = const VerificationMeta('expiry');
  @override
  late final GeneratedColumn<DateTime> expiry = GeneratedColumn<DateTime>(
      'expiry', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [key, response, expiry];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'db_cache_entries';
  @override
  VerificationContext validateIntegrity(Insertable<DbCacheEntry> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('key')) {
      context.handle(
          _keyMeta, key.isAcceptableOrUnknown(data['key']!, _keyMeta));
    } else if (isInserting) {
      context.missing(_keyMeta);
    }
    if (data.containsKey('response')) {
      context.handle(_responseMeta,
          response.isAcceptableOrUnknown(data['response']!, _responseMeta));
    } else if (isInserting) {
      context.missing(_responseMeta);
    }
    if (data.containsKey('expiry')) {
      context.handle(_expiryMeta,
          expiry.isAcceptableOrUnknown(data['expiry']!, _expiryMeta));
    } else if (isInserting) {
      context.missing(_expiryMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {key};
  @override
  DbCacheEntry map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DbCacheEntry(
      key: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}key'])!,
      response: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}response'])!,
      expiry: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}expiry'])!,
    );
  }

  @override
  $DbCacheEntriesTable createAlias(String alias) {
    return $DbCacheEntriesTable(attachedDatabase, alias);
  }
}

class DbCacheEntry extends DataClass implements Insertable<DbCacheEntry> {
  final String key;
  final String response;
  final DateTime expiry;
  const DbCacheEntry(
      {required this.key, required this.response, required this.expiry});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['key'] = Variable<String>(key);
    map['response'] = Variable<String>(response);
    map['expiry'] = Variable<DateTime>(expiry);
    return map;
  }

  DbCacheEntriesCompanion toCompanion(bool nullToAbsent) {
    return DbCacheEntriesCompanion(
      key: Value(key),
      response: Value(response),
      expiry: Value(expiry),
    );
  }

  factory DbCacheEntry.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DbCacheEntry(
      key: serializer.fromJson<String>(json['key']),
      response: serializer.fromJson<String>(json['response']),
      expiry: serializer.fromJson<DateTime>(json['expiry']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'key': serializer.toJson<String>(key),
      'response': serializer.toJson<String>(response),
      'expiry': serializer.toJson<DateTime>(expiry),
    };
  }

  DbCacheEntry copyWith({String? key, String? response, DateTime? expiry}) =>
      DbCacheEntry(
        key: key ?? this.key,
        response: response ?? this.response,
        expiry: expiry ?? this.expiry,
      );
  DbCacheEntry copyWithCompanion(DbCacheEntriesCompanion data) {
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
      (other is DbCacheEntry &&
          other.key == this.key &&
          other.response == this.response &&
          other.expiry == this.expiry);
}

class DbCacheEntriesCompanion extends UpdateCompanion<DbCacheEntry> {
  final Value<String> key;
  final Value<String> response;
  final Value<DateTime> expiry;
  final Value<int> rowid;
  const DbCacheEntriesCompanion({
    this.key = const Value.absent(),
    this.response = const Value.absent(),
    this.expiry = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  DbCacheEntriesCompanion.insert({
    required String key,
    required String response,
    required DateTime expiry,
    this.rowid = const Value.absent(),
  })  : key = Value(key),
        response = Value(response),
        expiry = Value(expiry);
  static Insertable<DbCacheEntry> custom({
    Expression<String>? key,
    Expression<String>? response,
    Expression<DateTime>? expiry,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (key != null) 'key': key,
      if (response != null) 'response': response,
      if (expiry != null) 'expiry': expiry,
      if (rowid != null) 'rowid': rowid,
    });
  }

  DbCacheEntriesCompanion copyWith(
      {Value<String>? key,
      Value<String>? response,
      Value<DateTime>? expiry,
      Value<int>? rowid}) {
    return DbCacheEntriesCompanion(
      key: key ?? this.key,
      response: response ?? this.response,
      expiry: expiry ?? this.expiry,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (key.present) {
      map['key'] = Variable<String>(key.value);
    }
    if (response.present) {
      map['response'] = Variable<String>(response.value);
    }
    if (expiry.present) {
      map['expiry'] = Variable<DateTime>(expiry.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
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

class $DbChapterHistoryTable extends DbChapterHistory
    with TableInfo<$DbChapterHistoryTable, DbChapterHistoryData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DbChapterHistoryTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _mangaIdMeta =
      const VerificationMeta('mangaId');
  @override
  late final GeneratedColumn<int> mangaId = GeneratedColumn<int>(
      'manga_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES db_mangas (id) ON DELETE CASCADE'));
  static const VerificationMeta _chapterIdMeta =
      const VerificationMeta('chapterId');
  @override
  late final GeneratedColumn<int> chapterId = GeneratedColumn<int>(
      'chapter_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES db_chapters (id) ON DELETE CASCADE'));
  static const VerificationMeta _readAtMeta = const VerificationMeta('readAt');
  @override
  late final GeneratedColumn<DateTime> readAt = GeneratedColumn<DateTime>(
      'read_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [mangaId, chapterId, readAt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'db_chapter_history';
  @override
  VerificationContext validateIntegrity(
      Insertable<DbChapterHistoryData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('manga_id')) {
      context.handle(_mangaIdMeta,
          mangaId.isAcceptableOrUnknown(data['manga_id']!, _mangaIdMeta));
    }
    if (data.containsKey('chapter_id')) {
      context.handle(_chapterIdMeta,
          chapterId.isAcceptableOrUnknown(data['chapter_id']!, _chapterIdMeta));
    } else if (isInserting) {
      context.missing(_chapterIdMeta);
    }
    if (data.containsKey('read_at')) {
      context.handle(_readAtMeta,
          readAt.isAcceptableOrUnknown(data['read_at']!, _readAtMeta));
    } else if (isInserting) {
      context.missing(_readAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {mangaId};
  @override
  DbChapterHistoryData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DbChapterHistoryData(
      mangaId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}manga_id'])!,
      chapterId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}chapter_id'])!,
      readAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}read_at'])!,
    );
  }

  @override
  $DbChapterHistoryTable createAlias(String alias) {
    return $DbChapterHistoryTable(attachedDatabase, alias);
  }
}

class DbChapterHistoryData extends DataClass
    implements Insertable<DbChapterHistoryData> {
  final int mangaId;
  final int chapterId;
  final DateTime readAt;
  const DbChapterHistoryData(
      {required this.mangaId, required this.chapterId, required this.readAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['manga_id'] = Variable<int>(mangaId);
    map['chapter_id'] = Variable<int>(chapterId);
    map['read_at'] = Variable<DateTime>(readAt);
    return map;
  }

  DbChapterHistoryCompanion toCompanion(bool nullToAbsent) {
    return DbChapterHistoryCompanion(
      mangaId: Value(mangaId),
      chapterId: Value(chapterId),
      readAt: Value(readAt),
    );
  }

  factory DbChapterHistoryData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DbChapterHistoryData(
      mangaId: serializer.fromJson<int>(json['mangaId']),
      chapterId: serializer.fromJson<int>(json['chapterId']),
      readAt: serializer.fromJson<DateTime>(json['readAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'mangaId': serializer.toJson<int>(mangaId),
      'chapterId': serializer.toJson<int>(chapterId),
      'readAt': serializer.toJson<DateTime>(readAt),
    };
  }

  DbChapterHistoryData copyWith(
          {int? mangaId, int? chapterId, DateTime? readAt}) =>
      DbChapterHistoryData(
        mangaId: mangaId ?? this.mangaId,
        chapterId: chapterId ?? this.chapterId,
        readAt: readAt ?? this.readAt,
      );
  DbChapterHistoryData copyWithCompanion(DbChapterHistoryCompanion data) {
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
      (other is DbChapterHistoryData &&
          other.mangaId == this.mangaId &&
          other.chapterId == this.chapterId &&
          other.readAt == this.readAt);
}

class DbChapterHistoryCompanion extends UpdateCompanion<DbChapterHistoryData> {
  final Value<int> mangaId;
  final Value<int> chapterId;
  final Value<DateTime> readAt;
  const DbChapterHistoryCompanion({
    this.mangaId = const Value.absent(),
    this.chapterId = const Value.absent(),
    this.readAt = const Value.absent(),
  });
  DbChapterHistoryCompanion.insert({
    this.mangaId = const Value.absent(),
    required int chapterId,
    required DateTime readAt,
  })  : chapterId = Value(chapterId),
        readAt = Value(readAt);
  static Insertable<DbChapterHistoryData> custom({
    Expression<int>? mangaId,
    Expression<int>? chapterId,
    Expression<DateTime>? readAt,
  }) {
    return RawValuesInsertable({
      if (mangaId != null) 'manga_id': mangaId,
      if (chapterId != null) 'chapter_id': chapterId,
      if (readAt != null) 'read_at': readAt,
    });
  }

  DbChapterHistoryCompanion copyWith(
      {Value<int>? mangaId, Value<int>? chapterId, Value<DateTime>? readAt}) {
    return DbChapterHistoryCompanion(
      mangaId: mangaId ?? this.mangaId,
      chapterId: chapterId ?? this.chapterId,
      readAt: readAt ?? this.readAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (mangaId.present) {
      map['manga_id'] = Variable<int>(mangaId.value);
    }
    if (chapterId.present) {
      map['chapter_id'] = Variable<int>(chapterId.value);
    }
    if (readAt.present) {
      map['read_at'] = Variable<DateTime>(readAt.value);
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

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $DbMangasTable dbMangas = $DbMangasTable(this);
  late final $DbChaptersTable dbChapters = $DbChaptersTable(this);
  late final $DbReadingDirectionTable dbReadingDirection =
      $DbReadingDirectionTable(this);
  late final $DbCacheEntriesTable dbCacheEntries = $DbCacheEntriesTable(this);
  late final $DbChapterHistoryTable dbChapterHistory =
      $DbChapterHistoryTable(this);
  late final Index mangaSourceId = Index('manga_source_id',
      'CREATE INDEX manga_source_id ON db_mangas (source_id)');
  late final Index mangaFavorite = Index(
      'manga_favorite', 'CREATE INDEX manga_favorite ON db_mangas (favorite)');
  late final Index mangaUrl =
      Index('manga_url', 'CREATE INDEX manga_url ON db_mangas (url)');
  late final Index mangaTitle =
      Index('manga_title', 'CREATE INDEX manga_title ON db_mangas (title)');
  late final Index chapterMangaId = Index('chapter_manga_id',
      'CREATE INDEX chapter_manga_id ON db_chapters (manga_id)');
  late final Index chapterDateUpload = Index('chapter_date_upload',
      'CREATE INDEX chapter_date_upload ON db_chapters (date_upload)');
  late final Index chapterNumber = Index('chapter_number',
      'CREATE INDEX chapter_number ON db_chapters (chapter_number)');
  late final Index chapterRead =
      Index('chapter_read', 'CREATE INDEX chapter_read ON db_chapters (read)');
  late final Index chapterHistoryReadAt = Index('chapter_history_read_at',
      'CREATE INDEX chapter_history_read_at ON db_chapter_history (read_at)');
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
        dbMangas,
        dbChapters,
        dbReadingDirection,
        dbCacheEntries,
        dbChapterHistory,
        mangaSourceId,
        mangaFavorite,
        mangaUrl,
        mangaTitle,
        chapterMangaId,
        chapterDateUpload,
        chapterNumber,
        chapterRead,
        chapterHistoryReadAt
      ];
  @override
  StreamQueryUpdateRules get streamUpdateRules => const StreamQueryUpdateRules(
        [
          WritePropagation(
            on: TableUpdateQuery.onTableName('db_mangas',
                limitUpdateKind: UpdateKind.delete),
            result: [
              TableUpdate('db_chapters', kind: UpdateKind.delete),
            ],
          ),
          WritePropagation(
            on: TableUpdateQuery.onTableName('db_mangas',
                limitUpdateKind: UpdateKind.delete),
            result: [
              TableUpdate('db_reading_direction', kind: UpdateKind.delete),
            ],
          ),
          WritePropagation(
            on: TableUpdateQuery.onTableName('db_mangas',
                limitUpdateKind: UpdateKind.delete),
            result: [
              TableUpdate('db_chapter_history', kind: UpdateKind.delete),
            ],
          ),
          WritePropagation(
            on: TableUpdateQuery.onTableName('db_chapters',
                limitUpdateKind: UpdateKind.delete),
            result: [
              TableUpdate('db_chapter_history', kind: UpdateKind.delete),
            ],
          ),
        ],
      );
}

typedef $$DbMangasTableCreateCompanionBuilder = DbMangasCompanion Function({
  Value<int> id,
  required String sourceId,
  Value<bool> favorite,
  Value<int> fetchInterval,
  Value<DateTime?> dateAdded,
  required String url,
  required String title,
  Value<String?> artist,
  Value<String?> author,
  Value<String?> description,
  Value<String?> genre,
  Value<MangaStatus> status,
  Value<String?> thumbnailUrl,
  required UpdateStrategy updateStrategy,
  Value<bool> initialized,
  Value<DateTime?> lastModifiedAt,
});
typedef $$DbMangasTableUpdateCompanionBuilder = DbMangasCompanion Function({
  Value<int> id,
  Value<String> sourceId,
  Value<bool> favorite,
  Value<int> fetchInterval,
  Value<DateTime?> dateAdded,
  Value<String> url,
  Value<String> title,
  Value<String?> artist,
  Value<String?> author,
  Value<String?> description,
  Value<String?> genre,
  Value<MangaStatus> status,
  Value<String?> thumbnailUrl,
  Value<UpdateStrategy> updateStrategy,
  Value<bool> initialized,
  Value<DateTime?> lastModifiedAt,
});

final class $$DbMangasTableReferences
    extends BaseReferences<_$AppDatabase, $DbMangasTable, DbManga> {
  $$DbMangasTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$DbChaptersTable, List<DbChapter>>
      _dbChaptersRefsTable(_$AppDatabase db) =>
          MultiTypedResultKey.fromTable(db.dbChapters,
              aliasName:
                  $_aliasNameGenerator(db.dbMangas.id, db.dbChapters.mangaId));

  $$DbChaptersTableProcessedTableManager get dbChaptersRefs {
    final manager = $$DbChaptersTableTableManager($_db, $_db.dbChapters)
        .filter((f) => f.mangaId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_dbChaptersRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }

  static MultiTypedResultKey<$DbReadingDirectionTable,
      List<DbReadingDirectionData>> _dbReadingDirectionRefsTable(
          _$AppDatabase db) =>
      MultiTypedResultKey.fromTable(db.dbReadingDirection,
          aliasName: $_aliasNameGenerator(
              db.dbMangas.id, db.dbReadingDirection.mangaId));

  $$DbReadingDirectionTableProcessedTableManager get dbReadingDirectionRefs {
    final manager =
        $$DbReadingDirectionTableTableManager($_db, $_db.dbReadingDirection)
            .filter((f) => f.mangaId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache =
        $_typedResult.readTableOrNull(_dbReadingDirectionRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }

  static MultiTypedResultKey<$DbChapterHistoryTable, List<DbChapterHistoryData>>
      _dbChapterHistoryRefsTable(_$AppDatabase db) =>
          MultiTypedResultKey.fromTable(db.dbChapterHistory,
              aliasName: $_aliasNameGenerator(
                  db.dbMangas.id, db.dbChapterHistory.mangaId));

  $$DbChapterHistoryTableProcessedTableManager get dbChapterHistoryRefs {
    final manager =
        $$DbChapterHistoryTableTableManager($_db, $_db.dbChapterHistory)
            .filter((f) => f.mangaId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache =
        $_typedResult.readTableOrNull(_dbChapterHistoryRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$DbMangasTableFilterComposer
    extends Composer<_$AppDatabase, $DbMangasTable> {
  $$DbMangasTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get sourceId => $composableBuilder(
      column: $table.sourceId, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get favorite => $composableBuilder(
      column: $table.favorite, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get fetchInterval => $composableBuilder(
      column: $table.fetchInterval, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get dateAdded => $composableBuilder(
      column: $table.dateAdded, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get url => $composableBuilder(
      column: $table.url, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get title => $composableBuilder(
      column: $table.title, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get artist => $composableBuilder(
      column: $table.artist, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get author => $composableBuilder(
      column: $table.author, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get genre => $composableBuilder(
      column: $table.genre, builder: (column) => ColumnFilters(column));

  ColumnWithTypeConverterFilters<MangaStatus, MangaStatus, int> get status =>
      $composableBuilder(
          column: $table.status,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnFilters<String> get thumbnailUrl => $composableBuilder(
      column: $table.thumbnailUrl, builder: (column) => ColumnFilters(column));

  ColumnWithTypeConverterFilters<UpdateStrategy, UpdateStrategy, int>
      get updateStrategy => $composableBuilder(
          column: $table.updateStrategy,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnFilters<bool> get initialized => $composableBuilder(
      column: $table.initialized, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get lastModifiedAt => $composableBuilder(
      column: $table.lastModifiedAt,
      builder: (column) => ColumnFilters(column));

  Expression<bool> dbChaptersRefs(
      Expression<bool> Function($$DbChaptersTableFilterComposer f) f) {
    final $$DbChaptersTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.dbChapters,
        getReferencedColumn: (t) => t.mangaId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$DbChaptersTableFilterComposer(
              $db: $db,
              $table: $db.dbChapters,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<bool> dbReadingDirectionRefs(
      Expression<bool> Function($$DbReadingDirectionTableFilterComposer f) f) {
    final $$DbReadingDirectionTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.dbReadingDirection,
        getReferencedColumn: (t) => t.mangaId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$DbReadingDirectionTableFilterComposer(
              $db: $db,
              $table: $db.dbReadingDirection,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<bool> dbChapterHistoryRefs(
      Expression<bool> Function($$DbChapterHistoryTableFilterComposer f) f) {
    final $$DbChapterHistoryTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.dbChapterHistory,
        getReferencedColumn: (t) => t.mangaId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$DbChapterHistoryTableFilterComposer(
              $db: $db,
              $table: $db.dbChapterHistory,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$DbMangasTableOrderingComposer
    extends Composer<_$AppDatabase, $DbMangasTable> {
  $$DbMangasTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get sourceId => $composableBuilder(
      column: $table.sourceId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get favorite => $composableBuilder(
      column: $table.favorite, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get fetchInterval => $composableBuilder(
      column: $table.fetchInterval,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get dateAdded => $composableBuilder(
      column: $table.dateAdded, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get url => $composableBuilder(
      column: $table.url, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get title => $composableBuilder(
      column: $table.title, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get artist => $composableBuilder(
      column: $table.artist, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get author => $composableBuilder(
      column: $table.author, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get genre => $composableBuilder(
      column: $table.genre, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get status => $composableBuilder(
      column: $table.status, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get thumbnailUrl => $composableBuilder(
      column: $table.thumbnailUrl,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get updateStrategy => $composableBuilder(
      column: $table.updateStrategy,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get initialized => $composableBuilder(
      column: $table.initialized, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get lastModifiedAt => $composableBuilder(
      column: $table.lastModifiedAt,
      builder: (column) => ColumnOrderings(column));
}

class $$DbMangasTableAnnotationComposer
    extends Composer<_$AppDatabase, $DbMangasTable> {
  $$DbMangasTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get sourceId =>
      $composableBuilder(column: $table.sourceId, builder: (column) => column);

  GeneratedColumn<bool> get favorite =>
      $composableBuilder(column: $table.favorite, builder: (column) => column);

  GeneratedColumn<int> get fetchInterval => $composableBuilder(
      column: $table.fetchInterval, builder: (column) => column);

  GeneratedColumn<DateTime> get dateAdded =>
      $composableBuilder(column: $table.dateAdded, builder: (column) => column);

  GeneratedColumn<String> get url =>
      $composableBuilder(column: $table.url, builder: (column) => column);

  GeneratedColumn<String> get title =>
      $composableBuilder(column: $table.title, builder: (column) => column);

  GeneratedColumn<String> get artist =>
      $composableBuilder(column: $table.artist, builder: (column) => column);

  GeneratedColumn<String> get author =>
      $composableBuilder(column: $table.author, builder: (column) => column);

  GeneratedColumn<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => column);

  GeneratedColumn<String> get genre =>
      $composableBuilder(column: $table.genre, builder: (column) => column);

  GeneratedColumnWithTypeConverter<MangaStatus, int> get status =>
      $composableBuilder(column: $table.status, builder: (column) => column);

  GeneratedColumn<String> get thumbnailUrl => $composableBuilder(
      column: $table.thumbnailUrl, builder: (column) => column);

  GeneratedColumnWithTypeConverter<UpdateStrategy, int> get updateStrategy =>
      $composableBuilder(
          column: $table.updateStrategy, builder: (column) => column);

  GeneratedColumn<bool> get initialized => $composableBuilder(
      column: $table.initialized, builder: (column) => column);

  GeneratedColumn<DateTime> get lastModifiedAt => $composableBuilder(
      column: $table.lastModifiedAt, builder: (column) => column);

  Expression<T> dbChaptersRefs<T extends Object>(
      Expression<T> Function($$DbChaptersTableAnnotationComposer a) f) {
    final $$DbChaptersTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.dbChapters,
        getReferencedColumn: (t) => t.mangaId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$DbChaptersTableAnnotationComposer(
              $db: $db,
              $table: $db.dbChapters,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<T> dbReadingDirectionRefs<T extends Object>(
      Expression<T> Function($$DbReadingDirectionTableAnnotationComposer a) f) {
    final $$DbReadingDirectionTableAnnotationComposer composer =
        $composerBuilder(
            composer: this,
            getCurrentColumn: (t) => t.id,
            referencedTable: $db.dbReadingDirection,
            getReferencedColumn: (t) => t.mangaId,
            builder: (joinBuilder,
                    {$addJoinBuilderToRootComposer,
                    $removeJoinBuilderFromRootComposer}) =>
                $$DbReadingDirectionTableAnnotationComposer(
                  $db: $db,
                  $table: $db.dbReadingDirection,
                  $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                  joinBuilder: joinBuilder,
                  $removeJoinBuilderFromRootComposer:
                      $removeJoinBuilderFromRootComposer,
                ));
    return f(composer);
  }

  Expression<T> dbChapterHistoryRefs<T extends Object>(
      Expression<T> Function($$DbChapterHistoryTableAnnotationComposer a) f) {
    final $$DbChapterHistoryTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.dbChapterHistory,
        getReferencedColumn: (t) => t.mangaId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$DbChapterHistoryTableAnnotationComposer(
              $db: $db,
              $table: $db.dbChapterHistory,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$DbMangasTableTableManager extends RootTableManager<
    _$AppDatabase,
    $DbMangasTable,
    DbManga,
    $$DbMangasTableFilterComposer,
    $$DbMangasTableOrderingComposer,
    $$DbMangasTableAnnotationComposer,
    $$DbMangasTableCreateCompanionBuilder,
    $$DbMangasTableUpdateCompanionBuilder,
    (DbManga, $$DbMangasTableReferences),
    DbManga,
    PrefetchHooks Function(
        {bool dbChaptersRefs,
        bool dbReadingDirectionRefs,
        bool dbChapterHistoryRefs})> {
  $$DbMangasTableTableManager(_$AppDatabase db, $DbMangasTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$DbMangasTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$DbMangasTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$DbMangasTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> sourceId = const Value.absent(),
            Value<bool> favorite = const Value.absent(),
            Value<int> fetchInterval = const Value.absent(),
            Value<DateTime?> dateAdded = const Value.absent(),
            Value<String> url = const Value.absent(),
            Value<String> title = const Value.absent(),
            Value<String?> artist = const Value.absent(),
            Value<String?> author = const Value.absent(),
            Value<String?> description = const Value.absent(),
            Value<String?> genre = const Value.absent(),
            Value<MangaStatus> status = const Value.absent(),
            Value<String?> thumbnailUrl = const Value.absent(),
            Value<UpdateStrategy> updateStrategy = const Value.absent(),
            Value<bool> initialized = const Value.absent(),
            Value<DateTime?> lastModifiedAt = const Value.absent(),
          }) =>
              DbMangasCompanion(
            id: id,
            sourceId: sourceId,
            favorite: favorite,
            fetchInterval: fetchInterval,
            dateAdded: dateAdded,
            url: url,
            title: title,
            artist: artist,
            author: author,
            description: description,
            genre: genre,
            status: status,
            thumbnailUrl: thumbnailUrl,
            updateStrategy: updateStrategy,
            initialized: initialized,
            lastModifiedAt: lastModifiedAt,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String sourceId,
            Value<bool> favorite = const Value.absent(),
            Value<int> fetchInterval = const Value.absent(),
            Value<DateTime?> dateAdded = const Value.absent(),
            required String url,
            required String title,
            Value<String?> artist = const Value.absent(),
            Value<String?> author = const Value.absent(),
            Value<String?> description = const Value.absent(),
            Value<String?> genre = const Value.absent(),
            Value<MangaStatus> status = const Value.absent(),
            Value<String?> thumbnailUrl = const Value.absent(),
            required UpdateStrategy updateStrategy,
            Value<bool> initialized = const Value.absent(),
            Value<DateTime?> lastModifiedAt = const Value.absent(),
          }) =>
              DbMangasCompanion.insert(
            id: id,
            sourceId: sourceId,
            favorite: favorite,
            fetchInterval: fetchInterval,
            dateAdded: dateAdded,
            url: url,
            title: title,
            artist: artist,
            author: author,
            description: description,
            genre: genre,
            status: status,
            thumbnailUrl: thumbnailUrl,
            updateStrategy: updateStrategy,
            initialized: initialized,
            lastModifiedAt: lastModifiedAt,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) =>
                  (e.readTable(table), $$DbMangasTableReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: (
              {dbChaptersRefs = false,
              dbReadingDirectionRefs = false,
              dbChapterHistoryRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (dbChaptersRefs) db.dbChapters,
                if (dbReadingDirectionRefs) db.dbReadingDirection,
                if (dbChapterHistoryRefs) db.dbChapterHistory
              ],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (dbChaptersRefs)
                    await $_getPrefetchedData<DbManga, $DbMangasTable,
                            DbChapter>(
                        currentTable: table,
                        referencedTable:
                            $$DbMangasTableReferences._dbChaptersRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$DbMangasTableReferences(db, table, p0)
                                .dbChaptersRefs,
                        referencedItemsForCurrentItem: (item,
                                referencedItems) =>
                            referencedItems.where((e) => e.mangaId == item.id),
                        typedResults: items),
                  if (dbReadingDirectionRefs)
                    await $_getPrefetchedData<DbManga, $DbMangasTable,
                            DbReadingDirectionData>(
                        currentTable: table,
                        referencedTable: $$DbMangasTableReferences
                            ._dbReadingDirectionRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$DbMangasTableReferences(db, table, p0)
                                .dbReadingDirectionRefs,
                        referencedItemsForCurrentItem: (item,
                                referencedItems) =>
                            referencedItems.where((e) => e.mangaId == item.id),
                        typedResults: items),
                  if (dbChapterHistoryRefs)
                    await $_getPrefetchedData<DbManga, $DbMangasTable,
                            DbChapterHistoryData>(
                        currentTable: table,
                        referencedTable: $$DbMangasTableReferences
                            ._dbChapterHistoryRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$DbMangasTableReferences(db, table, p0)
                                .dbChapterHistoryRefs,
                        referencedItemsForCurrentItem: (item,
                                referencedItems) =>
                            referencedItems.where((e) => e.mangaId == item.id),
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$DbMangasTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $DbMangasTable,
    DbManga,
    $$DbMangasTableFilterComposer,
    $$DbMangasTableOrderingComposer,
    $$DbMangasTableAnnotationComposer,
    $$DbMangasTableCreateCompanionBuilder,
    $$DbMangasTableUpdateCompanionBuilder,
    (DbManga, $$DbMangasTableReferences),
    DbManga,
    PrefetchHooks Function(
        {bool dbChaptersRefs,
        bool dbReadingDirectionRefs,
        bool dbChapterHistoryRefs})>;
typedef $$DbChaptersTableCreateCompanionBuilder = DbChaptersCompanion Function({
  Value<int> id,
  required int mangaId,
  required String url,
  required String name,
  Value<DateTime?> dateUpload,
  Value<double> chapterNumber,
  Value<String?> scanlator,
  Value<bool> read,
  Value<bool> downloaded,
  Value<bool> bookmark,
  Value<int> lastPageRead,
  Value<DateTime?> dateFetch,
  Value<DateTime?> lastModified,
});
typedef $$DbChaptersTableUpdateCompanionBuilder = DbChaptersCompanion Function({
  Value<int> id,
  Value<int> mangaId,
  Value<String> url,
  Value<String> name,
  Value<DateTime?> dateUpload,
  Value<double> chapterNumber,
  Value<String?> scanlator,
  Value<bool> read,
  Value<bool> downloaded,
  Value<bool> bookmark,
  Value<int> lastPageRead,
  Value<DateTime?> dateFetch,
  Value<DateTime?> lastModified,
});

final class $$DbChaptersTableReferences
    extends BaseReferences<_$AppDatabase, $DbChaptersTable, DbChapter> {
  $$DbChaptersTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $DbMangasTable _mangaIdTable(_$AppDatabase db) => db.dbMangas
      .createAlias($_aliasNameGenerator(db.dbChapters.mangaId, db.dbMangas.id));

  $$DbMangasTableProcessedTableManager get mangaId {
    final $_column = $_itemColumn<int>('manga_id')!;

    final manager = $$DbMangasTableTableManager($_db, $_db.dbMangas)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_mangaIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static MultiTypedResultKey<$DbChapterHistoryTable, List<DbChapterHistoryData>>
      _dbChapterHistoryRefsTable(_$AppDatabase db) =>
          MultiTypedResultKey.fromTable(db.dbChapterHistory,
              aliasName: $_aliasNameGenerator(
                  db.dbChapters.id, db.dbChapterHistory.chapterId));

  $$DbChapterHistoryTableProcessedTableManager get dbChapterHistoryRefs {
    final manager =
        $$DbChapterHistoryTableTableManager($_db, $_db.dbChapterHistory)
            .filter((f) => f.chapterId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache =
        $_typedResult.readTableOrNull(_dbChapterHistoryRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$DbChaptersTableFilterComposer
    extends Composer<_$AppDatabase, $DbChaptersTable> {
  $$DbChaptersTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get url => $composableBuilder(
      column: $table.url, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get dateUpload => $composableBuilder(
      column: $table.dateUpload, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get chapterNumber => $composableBuilder(
      column: $table.chapterNumber, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get scanlator => $composableBuilder(
      column: $table.scanlator, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get read => $composableBuilder(
      column: $table.read, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get downloaded => $composableBuilder(
      column: $table.downloaded, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get bookmark => $composableBuilder(
      column: $table.bookmark, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get lastPageRead => $composableBuilder(
      column: $table.lastPageRead, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get dateFetch => $composableBuilder(
      column: $table.dateFetch, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get lastModified => $composableBuilder(
      column: $table.lastModified, builder: (column) => ColumnFilters(column));

  $$DbMangasTableFilterComposer get mangaId {
    final $$DbMangasTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.mangaId,
        referencedTable: $db.dbMangas,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$DbMangasTableFilterComposer(
              $db: $db,
              $table: $db.dbMangas,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  Expression<bool> dbChapterHistoryRefs(
      Expression<bool> Function($$DbChapterHistoryTableFilterComposer f) f) {
    final $$DbChapterHistoryTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.dbChapterHistory,
        getReferencedColumn: (t) => t.chapterId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$DbChapterHistoryTableFilterComposer(
              $db: $db,
              $table: $db.dbChapterHistory,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$DbChaptersTableOrderingComposer
    extends Composer<_$AppDatabase, $DbChaptersTable> {
  $$DbChaptersTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get url => $composableBuilder(
      column: $table.url, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get dateUpload => $composableBuilder(
      column: $table.dateUpload, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get chapterNumber => $composableBuilder(
      column: $table.chapterNumber,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get scanlator => $composableBuilder(
      column: $table.scanlator, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get read => $composableBuilder(
      column: $table.read, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get downloaded => $composableBuilder(
      column: $table.downloaded, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get bookmark => $composableBuilder(
      column: $table.bookmark, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get lastPageRead => $composableBuilder(
      column: $table.lastPageRead,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get dateFetch => $composableBuilder(
      column: $table.dateFetch, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get lastModified => $composableBuilder(
      column: $table.lastModified,
      builder: (column) => ColumnOrderings(column));

  $$DbMangasTableOrderingComposer get mangaId {
    final $$DbMangasTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.mangaId,
        referencedTable: $db.dbMangas,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$DbMangasTableOrderingComposer(
              $db: $db,
              $table: $db.dbMangas,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$DbChaptersTableAnnotationComposer
    extends Composer<_$AppDatabase, $DbChaptersTable> {
  $$DbChaptersTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get url =>
      $composableBuilder(column: $table.url, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<DateTime> get dateUpload => $composableBuilder(
      column: $table.dateUpload, builder: (column) => column);

  GeneratedColumn<double> get chapterNumber => $composableBuilder(
      column: $table.chapterNumber, builder: (column) => column);

  GeneratedColumn<String> get scanlator =>
      $composableBuilder(column: $table.scanlator, builder: (column) => column);

  GeneratedColumn<bool> get read =>
      $composableBuilder(column: $table.read, builder: (column) => column);

  GeneratedColumn<bool> get downloaded => $composableBuilder(
      column: $table.downloaded, builder: (column) => column);

  GeneratedColumn<bool> get bookmark =>
      $composableBuilder(column: $table.bookmark, builder: (column) => column);

  GeneratedColumn<int> get lastPageRead => $composableBuilder(
      column: $table.lastPageRead, builder: (column) => column);

  GeneratedColumn<DateTime> get dateFetch =>
      $composableBuilder(column: $table.dateFetch, builder: (column) => column);

  GeneratedColumn<DateTime> get lastModified => $composableBuilder(
      column: $table.lastModified, builder: (column) => column);

  $$DbMangasTableAnnotationComposer get mangaId {
    final $$DbMangasTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.mangaId,
        referencedTable: $db.dbMangas,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$DbMangasTableAnnotationComposer(
              $db: $db,
              $table: $db.dbMangas,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  Expression<T> dbChapterHistoryRefs<T extends Object>(
      Expression<T> Function($$DbChapterHistoryTableAnnotationComposer a) f) {
    final $$DbChapterHistoryTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.dbChapterHistory,
        getReferencedColumn: (t) => t.chapterId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$DbChapterHistoryTableAnnotationComposer(
              $db: $db,
              $table: $db.dbChapterHistory,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$DbChaptersTableTableManager extends RootTableManager<
    _$AppDatabase,
    $DbChaptersTable,
    DbChapter,
    $$DbChaptersTableFilterComposer,
    $$DbChaptersTableOrderingComposer,
    $$DbChaptersTableAnnotationComposer,
    $$DbChaptersTableCreateCompanionBuilder,
    $$DbChaptersTableUpdateCompanionBuilder,
    (DbChapter, $$DbChaptersTableReferences),
    DbChapter,
    PrefetchHooks Function({bool mangaId, bool dbChapterHistoryRefs})> {
  $$DbChaptersTableTableManager(_$AppDatabase db, $DbChaptersTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$DbChaptersTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$DbChaptersTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$DbChaptersTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int> mangaId = const Value.absent(),
            Value<String> url = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<DateTime?> dateUpload = const Value.absent(),
            Value<double> chapterNumber = const Value.absent(),
            Value<String?> scanlator = const Value.absent(),
            Value<bool> read = const Value.absent(),
            Value<bool> downloaded = const Value.absent(),
            Value<bool> bookmark = const Value.absent(),
            Value<int> lastPageRead = const Value.absent(),
            Value<DateTime?> dateFetch = const Value.absent(),
            Value<DateTime?> lastModified = const Value.absent(),
          }) =>
              DbChaptersCompanion(
            id: id,
            mangaId: mangaId,
            url: url,
            name: name,
            dateUpload: dateUpload,
            chapterNumber: chapterNumber,
            scanlator: scanlator,
            read: read,
            downloaded: downloaded,
            bookmark: bookmark,
            lastPageRead: lastPageRead,
            dateFetch: dateFetch,
            lastModified: lastModified,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required int mangaId,
            required String url,
            required String name,
            Value<DateTime?> dateUpload = const Value.absent(),
            Value<double> chapterNumber = const Value.absent(),
            Value<String?> scanlator = const Value.absent(),
            Value<bool> read = const Value.absent(),
            Value<bool> downloaded = const Value.absent(),
            Value<bool> bookmark = const Value.absent(),
            Value<int> lastPageRead = const Value.absent(),
            Value<DateTime?> dateFetch = const Value.absent(),
            Value<DateTime?> lastModified = const Value.absent(),
          }) =>
              DbChaptersCompanion.insert(
            id: id,
            mangaId: mangaId,
            url: url,
            name: name,
            dateUpload: dateUpload,
            chapterNumber: chapterNumber,
            scanlator: scanlator,
            read: read,
            downloaded: downloaded,
            bookmark: bookmark,
            lastPageRead: lastPageRead,
            dateFetch: dateFetch,
            lastModified: lastModified,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$DbChaptersTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: (
              {mangaId = false, dbChapterHistoryRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (dbChapterHistoryRefs) db.dbChapterHistory
              ],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (mangaId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.mangaId,
                    referencedTable:
                        $$DbChaptersTableReferences._mangaIdTable(db),
                    referencedColumn:
                        $$DbChaptersTableReferences._mangaIdTable(db).id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [
                  if (dbChapterHistoryRefs)
                    await $_getPrefetchedData<DbChapter, $DbChaptersTable, DbChapterHistoryData>(
                        currentTable: table,
                        referencedTable: $$DbChaptersTableReferences
                            ._dbChapterHistoryRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$DbChaptersTableReferences(db, table, p0)
                                .dbChapterHistoryRefs,
                        referencedItemsForCurrentItem:
                            (item, referencedItems) => referencedItems
                                .where((e) => e.chapterId == item.id),
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$DbChaptersTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $DbChaptersTable,
    DbChapter,
    $$DbChaptersTableFilterComposer,
    $$DbChaptersTableOrderingComposer,
    $$DbChaptersTableAnnotationComposer,
    $$DbChaptersTableCreateCompanionBuilder,
    $$DbChaptersTableUpdateCompanionBuilder,
    (DbChapter, $$DbChaptersTableReferences),
    DbChapter,
    PrefetchHooks Function({bool mangaId, bool dbChapterHistoryRefs})>;
typedef $$DbReadingDirectionTableCreateCompanionBuilder
    = DbReadingDirectionCompanion Function({
  Value<int> mangaId,
  required ReadingDirection direction,
});
typedef $$DbReadingDirectionTableUpdateCompanionBuilder
    = DbReadingDirectionCompanion Function({
  Value<int> mangaId,
  Value<ReadingDirection> direction,
});

final class $$DbReadingDirectionTableReferences extends BaseReferences<
    _$AppDatabase, $DbReadingDirectionTable, DbReadingDirectionData> {
  $$DbReadingDirectionTableReferences(
      super.$_db, super.$_table, super.$_typedResult);

  static $DbMangasTable _mangaIdTable(_$AppDatabase db) =>
      db.dbMangas.createAlias(
          $_aliasNameGenerator(db.dbReadingDirection.mangaId, db.dbMangas.id));

  $$DbMangasTableProcessedTableManager get mangaId {
    final $_column = $_itemColumn<int>('manga_id')!;

    final manager = $$DbMangasTableTableManager($_db, $_db.dbMangas)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_mangaIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$DbReadingDirectionTableFilterComposer
    extends Composer<_$AppDatabase, $DbReadingDirectionTable> {
  $$DbReadingDirectionTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnWithTypeConverterFilters<ReadingDirection, ReadingDirection, int>
      get direction => $composableBuilder(
          column: $table.direction,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  $$DbMangasTableFilterComposer get mangaId {
    final $$DbMangasTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.mangaId,
        referencedTable: $db.dbMangas,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$DbMangasTableFilterComposer(
              $db: $db,
              $table: $db.dbMangas,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$DbReadingDirectionTableOrderingComposer
    extends Composer<_$AppDatabase, $DbReadingDirectionTable> {
  $$DbReadingDirectionTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get direction => $composableBuilder(
      column: $table.direction, builder: (column) => ColumnOrderings(column));

  $$DbMangasTableOrderingComposer get mangaId {
    final $$DbMangasTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.mangaId,
        referencedTable: $db.dbMangas,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$DbMangasTableOrderingComposer(
              $db: $db,
              $table: $db.dbMangas,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$DbReadingDirectionTableAnnotationComposer
    extends Composer<_$AppDatabase, $DbReadingDirectionTable> {
  $$DbReadingDirectionTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumnWithTypeConverter<ReadingDirection, int> get direction =>
      $composableBuilder(column: $table.direction, builder: (column) => column);

  $$DbMangasTableAnnotationComposer get mangaId {
    final $$DbMangasTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.mangaId,
        referencedTable: $db.dbMangas,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$DbMangasTableAnnotationComposer(
              $db: $db,
              $table: $db.dbMangas,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$DbReadingDirectionTableTableManager extends RootTableManager<
    _$AppDatabase,
    $DbReadingDirectionTable,
    DbReadingDirectionData,
    $$DbReadingDirectionTableFilterComposer,
    $$DbReadingDirectionTableOrderingComposer,
    $$DbReadingDirectionTableAnnotationComposer,
    $$DbReadingDirectionTableCreateCompanionBuilder,
    $$DbReadingDirectionTableUpdateCompanionBuilder,
    (DbReadingDirectionData, $$DbReadingDirectionTableReferences),
    DbReadingDirectionData,
    PrefetchHooks Function({bool mangaId})> {
  $$DbReadingDirectionTableTableManager(
      _$AppDatabase db, $DbReadingDirectionTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$DbReadingDirectionTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$DbReadingDirectionTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$DbReadingDirectionTableAnnotationComposer(
                  $db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> mangaId = const Value.absent(),
            Value<ReadingDirection> direction = const Value.absent(),
          }) =>
              DbReadingDirectionCompanion(
            mangaId: mangaId,
            direction: direction,
          ),
          createCompanionCallback: ({
            Value<int> mangaId = const Value.absent(),
            required ReadingDirection direction,
          }) =>
              DbReadingDirectionCompanion.insert(
            mangaId: mangaId,
            direction: direction,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$DbReadingDirectionTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({mangaId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (mangaId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.mangaId,
                    referencedTable:
                        $$DbReadingDirectionTableReferences._mangaIdTable(db),
                    referencedColumn: $$DbReadingDirectionTableReferences
                        ._mangaIdTable(db)
                        .id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ));
}

typedef $$DbReadingDirectionTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $DbReadingDirectionTable,
    DbReadingDirectionData,
    $$DbReadingDirectionTableFilterComposer,
    $$DbReadingDirectionTableOrderingComposer,
    $$DbReadingDirectionTableAnnotationComposer,
    $$DbReadingDirectionTableCreateCompanionBuilder,
    $$DbReadingDirectionTableUpdateCompanionBuilder,
    (DbReadingDirectionData, $$DbReadingDirectionTableReferences),
    DbReadingDirectionData,
    PrefetchHooks Function({bool mangaId})>;
typedef $$DbCacheEntriesTableCreateCompanionBuilder = DbCacheEntriesCompanion
    Function({
  required String key,
  required String response,
  required DateTime expiry,
  Value<int> rowid,
});
typedef $$DbCacheEntriesTableUpdateCompanionBuilder = DbCacheEntriesCompanion
    Function({
  Value<String> key,
  Value<String> response,
  Value<DateTime> expiry,
  Value<int> rowid,
});

class $$DbCacheEntriesTableFilterComposer
    extends Composer<_$AppDatabase, $DbCacheEntriesTable> {
  $$DbCacheEntriesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get key => $composableBuilder(
      column: $table.key, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get response => $composableBuilder(
      column: $table.response, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get expiry => $composableBuilder(
      column: $table.expiry, builder: (column) => ColumnFilters(column));
}

class $$DbCacheEntriesTableOrderingComposer
    extends Composer<_$AppDatabase, $DbCacheEntriesTable> {
  $$DbCacheEntriesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get key => $composableBuilder(
      column: $table.key, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get response => $composableBuilder(
      column: $table.response, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get expiry => $composableBuilder(
      column: $table.expiry, builder: (column) => ColumnOrderings(column));
}

class $$DbCacheEntriesTableAnnotationComposer
    extends Composer<_$AppDatabase, $DbCacheEntriesTable> {
  $$DbCacheEntriesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get key =>
      $composableBuilder(column: $table.key, builder: (column) => column);

  GeneratedColumn<String> get response =>
      $composableBuilder(column: $table.response, builder: (column) => column);

  GeneratedColumn<DateTime> get expiry =>
      $composableBuilder(column: $table.expiry, builder: (column) => column);
}

class $$DbCacheEntriesTableTableManager extends RootTableManager<
    _$AppDatabase,
    $DbCacheEntriesTable,
    DbCacheEntry,
    $$DbCacheEntriesTableFilterComposer,
    $$DbCacheEntriesTableOrderingComposer,
    $$DbCacheEntriesTableAnnotationComposer,
    $$DbCacheEntriesTableCreateCompanionBuilder,
    $$DbCacheEntriesTableUpdateCompanionBuilder,
    (
      DbCacheEntry,
      BaseReferences<_$AppDatabase, $DbCacheEntriesTable, DbCacheEntry>
    ),
    DbCacheEntry,
    PrefetchHooks Function()> {
  $$DbCacheEntriesTableTableManager(
      _$AppDatabase db, $DbCacheEntriesTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$DbCacheEntriesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$DbCacheEntriesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$DbCacheEntriesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> key = const Value.absent(),
            Value<String> response = const Value.absent(),
            Value<DateTime> expiry = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              DbCacheEntriesCompanion(
            key: key,
            response: response,
            expiry: expiry,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String key,
            required String response,
            required DateTime expiry,
            Value<int> rowid = const Value.absent(),
          }) =>
              DbCacheEntriesCompanion.insert(
            key: key,
            response: response,
            expiry: expiry,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$DbCacheEntriesTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $DbCacheEntriesTable,
    DbCacheEntry,
    $$DbCacheEntriesTableFilterComposer,
    $$DbCacheEntriesTableOrderingComposer,
    $$DbCacheEntriesTableAnnotationComposer,
    $$DbCacheEntriesTableCreateCompanionBuilder,
    $$DbCacheEntriesTableUpdateCompanionBuilder,
    (
      DbCacheEntry,
      BaseReferences<_$AppDatabase, $DbCacheEntriesTable, DbCacheEntry>
    ),
    DbCacheEntry,
    PrefetchHooks Function()>;
typedef $$DbChapterHistoryTableCreateCompanionBuilder
    = DbChapterHistoryCompanion Function({
  Value<int> mangaId,
  required int chapterId,
  required DateTime readAt,
});
typedef $$DbChapterHistoryTableUpdateCompanionBuilder
    = DbChapterHistoryCompanion Function({
  Value<int> mangaId,
  Value<int> chapterId,
  Value<DateTime> readAt,
});

final class $$DbChapterHistoryTableReferences extends BaseReferences<
    _$AppDatabase, $DbChapterHistoryTable, DbChapterHistoryData> {
  $$DbChapterHistoryTableReferences(
      super.$_db, super.$_table, super.$_typedResult);

  static $DbMangasTable _mangaIdTable(_$AppDatabase db) =>
      db.dbMangas.createAlias(
          $_aliasNameGenerator(db.dbChapterHistory.mangaId, db.dbMangas.id));

  $$DbMangasTableProcessedTableManager get mangaId {
    final $_column = $_itemColumn<int>('manga_id')!;

    final manager = $$DbMangasTableTableManager($_db, $_db.dbMangas)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_mangaIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static $DbChaptersTable _chapterIdTable(_$AppDatabase db) =>
      db.dbChapters.createAlias($_aliasNameGenerator(
          db.dbChapterHistory.chapterId, db.dbChapters.id));

  $$DbChaptersTableProcessedTableManager get chapterId {
    final $_column = $_itemColumn<int>('chapter_id')!;

    final manager = $$DbChaptersTableTableManager($_db, $_db.dbChapters)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_chapterIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$DbChapterHistoryTableFilterComposer
    extends Composer<_$AppDatabase, $DbChapterHistoryTable> {
  $$DbChapterHistoryTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<DateTime> get readAt => $composableBuilder(
      column: $table.readAt, builder: (column) => ColumnFilters(column));

  $$DbMangasTableFilterComposer get mangaId {
    final $$DbMangasTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.mangaId,
        referencedTable: $db.dbMangas,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$DbMangasTableFilterComposer(
              $db: $db,
              $table: $db.dbMangas,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$DbChaptersTableFilterComposer get chapterId {
    final $$DbChaptersTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.chapterId,
        referencedTable: $db.dbChapters,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$DbChaptersTableFilterComposer(
              $db: $db,
              $table: $db.dbChapters,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$DbChapterHistoryTableOrderingComposer
    extends Composer<_$AppDatabase, $DbChapterHistoryTable> {
  $$DbChapterHistoryTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<DateTime> get readAt => $composableBuilder(
      column: $table.readAt, builder: (column) => ColumnOrderings(column));

  $$DbMangasTableOrderingComposer get mangaId {
    final $$DbMangasTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.mangaId,
        referencedTable: $db.dbMangas,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$DbMangasTableOrderingComposer(
              $db: $db,
              $table: $db.dbMangas,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$DbChaptersTableOrderingComposer get chapterId {
    final $$DbChaptersTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.chapterId,
        referencedTable: $db.dbChapters,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$DbChaptersTableOrderingComposer(
              $db: $db,
              $table: $db.dbChapters,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$DbChapterHistoryTableAnnotationComposer
    extends Composer<_$AppDatabase, $DbChapterHistoryTable> {
  $$DbChapterHistoryTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<DateTime> get readAt =>
      $composableBuilder(column: $table.readAt, builder: (column) => column);

  $$DbMangasTableAnnotationComposer get mangaId {
    final $$DbMangasTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.mangaId,
        referencedTable: $db.dbMangas,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$DbMangasTableAnnotationComposer(
              $db: $db,
              $table: $db.dbMangas,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$DbChaptersTableAnnotationComposer get chapterId {
    final $$DbChaptersTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.chapterId,
        referencedTable: $db.dbChapters,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$DbChaptersTableAnnotationComposer(
              $db: $db,
              $table: $db.dbChapters,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$DbChapterHistoryTableTableManager extends RootTableManager<
    _$AppDatabase,
    $DbChapterHistoryTable,
    DbChapterHistoryData,
    $$DbChapterHistoryTableFilterComposer,
    $$DbChapterHistoryTableOrderingComposer,
    $$DbChapterHistoryTableAnnotationComposer,
    $$DbChapterHistoryTableCreateCompanionBuilder,
    $$DbChapterHistoryTableUpdateCompanionBuilder,
    (DbChapterHistoryData, $$DbChapterHistoryTableReferences),
    DbChapterHistoryData,
    PrefetchHooks Function({bool mangaId, bool chapterId})> {
  $$DbChapterHistoryTableTableManager(
      _$AppDatabase db, $DbChapterHistoryTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$DbChapterHistoryTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$DbChapterHistoryTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$DbChapterHistoryTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> mangaId = const Value.absent(),
            Value<int> chapterId = const Value.absent(),
            Value<DateTime> readAt = const Value.absent(),
          }) =>
              DbChapterHistoryCompanion(
            mangaId: mangaId,
            chapterId: chapterId,
            readAt: readAt,
          ),
          createCompanionCallback: ({
            Value<int> mangaId = const Value.absent(),
            required int chapterId,
            required DateTime readAt,
          }) =>
              DbChapterHistoryCompanion.insert(
            mangaId: mangaId,
            chapterId: chapterId,
            readAt: readAt,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$DbChapterHistoryTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({mangaId = false, chapterId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (mangaId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.mangaId,
                    referencedTable:
                        $$DbChapterHistoryTableReferences._mangaIdTable(db),
                    referencedColumn:
                        $$DbChapterHistoryTableReferences._mangaIdTable(db).id,
                  ) as T;
                }
                if (chapterId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.chapterId,
                    referencedTable:
                        $$DbChapterHistoryTableReferences._chapterIdTable(db),
                    referencedColumn: $$DbChapterHistoryTableReferences
                        ._chapterIdTable(db)
                        .id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ));
}

typedef $$DbChapterHistoryTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $DbChapterHistoryTable,
    DbChapterHistoryData,
    $$DbChapterHistoryTableFilterComposer,
    $$DbChapterHistoryTableOrderingComposer,
    $$DbChapterHistoryTableAnnotationComposer,
    $$DbChapterHistoryTableCreateCompanionBuilder,
    $$DbChapterHistoryTableUpdateCompanionBuilder,
    (DbChapterHistoryData, $$DbChapterHistoryTableReferences),
    DbChapterHistoryData,
    PrefetchHooks Function({bool mangaId, bool chapterId})>;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$DbMangasTableTableManager get dbMangas =>
      $$DbMangasTableTableManager(_db, _db.dbMangas);
  $$DbChaptersTableTableManager get dbChapters =>
      $$DbChaptersTableTableManager(_db, _db.dbChapters);
  $$DbReadingDirectionTableTableManager get dbReadingDirection =>
      $$DbReadingDirectionTableTableManager(_db, _db.dbReadingDirection);
  $$DbCacheEntriesTableTableManager get dbCacheEntries =>
      $$DbCacheEntriesTableTableManager(_db, _db.dbCacheEntries);
  $$DbChapterHistoryTableTableManager get dbChapterHistory =>
      $$DbChapterHistoryTableTableManager(_db, _db.dbChapterHistory);
}

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$appDatabaseHash() => r'98a09c6cfd43966155dfbdb0787fa18c85438e13';

/// See also [appDatabase].
@ProviderFor(appDatabase)
final appDatabaseProvider = Provider<AppDatabase>.internal(
  appDatabase,
  name: r'appDatabaseProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$appDatabaseHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef AppDatabaseRef = ProviderRef<AppDatabase>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
