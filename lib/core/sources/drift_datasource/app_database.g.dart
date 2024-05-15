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
  static const VerificationMeta _lastUpdateMeta =
      const VerificationMeta('lastUpdate');
  @override
  late final GeneratedColumn<DateTime> lastUpdate = GeneratedColumn<DateTime>(
      'last_update', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _nextUpdateMeta =
      const VerificationMeta('nextUpdate');
  @override
  late final GeneratedColumn<DateTime> nextUpdate = GeneratedColumn<DateTime>(
      'next_update', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
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
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant(''));
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
      'title', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant(''));
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
              type: DriftSqlType.int,
              requiredDuringInsert: false,
              defaultValue: const Constant(0))
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
        lastUpdate,
        nextUpdate,
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
    if (data.containsKey('last_update')) {
      context.handle(
          _lastUpdateMeta,
          lastUpdate.isAcceptableOrUnknown(
              data['last_update']!, _lastUpdateMeta));
    }
    if (data.containsKey('next_update')) {
      context.handle(
          _nextUpdateMeta,
          nextUpdate.isAcceptableOrUnknown(
              data['next_update']!, _nextUpdateMeta));
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
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
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
  DbManga map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DbManga(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      sourceId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}source_id'])!,
      favorite: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}favorite'])!,
      lastUpdate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}last_update']),
      nextUpdate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}next_update']),
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
  final DateTime? lastUpdate;
  final DateTime? nextUpdate;
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
      this.lastUpdate,
      this.nextUpdate,
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
    if (!nullToAbsent || lastUpdate != null) {
      map['last_update'] = Variable<DateTime>(lastUpdate);
    }
    if (!nullToAbsent || nextUpdate != null) {
      map['next_update'] = Variable<DateTime>(nextUpdate);
    }
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
      lastUpdate: lastUpdate == null && nullToAbsent
          ? const Value.absent()
          : Value(lastUpdate),
      nextUpdate: nextUpdate == null && nullToAbsent
          ? const Value.absent()
          : Value(nextUpdate),
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
      lastUpdate: serializer.fromJson<DateTime?>(json['lastUpdate']),
      nextUpdate: serializer.fromJson<DateTime?>(json['nextUpdate']),
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
      'lastUpdate': serializer.toJson<DateTime?>(lastUpdate),
      'nextUpdate': serializer.toJson<DateTime?>(nextUpdate),
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
          Value<DateTime?> lastUpdate = const Value.absent(),
          Value<DateTime?> nextUpdate = const Value.absent(),
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
        lastUpdate: lastUpdate.present ? lastUpdate.value : this.lastUpdate,
        nextUpdate: nextUpdate.present ? nextUpdate.value : this.nextUpdate,
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
  @override
  String toString() {
    return (StringBuffer('DbManga(')
          ..write('id: $id, ')
          ..write('sourceId: $sourceId, ')
          ..write('favorite: $favorite, ')
          ..write('lastUpdate: $lastUpdate, ')
          ..write('nextUpdate: $nextUpdate, ')
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
      lastUpdate,
      nextUpdate,
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
          other.lastUpdate == this.lastUpdate &&
          other.nextUpdate == this.nextUpdate &&
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
  final Value<DateTime?> lastUpdate;
  final Value<DateTime?> nextUpdate;
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
    this.lastUpdate = const Value.absent(),
    this.nextUpdate = const Value.absent(),
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
    this.lastUpdate = const Value.absent(),
    this.nextUpdate = const Value.absent(),
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
  }) : sourceId = Value(sourceId);
  static Insertable<DbManga> custom({
    Expression<int>? id,
    Expression<String>? sourceId,
    Expression<bool>? favorite,
    Expression<DateTime>? lastUpdate,
    Expression<DateTime>? nextUpdate,
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
      if (lastUpdate != null) 'last_update': lastUpdate,
      if (nextUpdate != null) 'next_update': nextUpdate,
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
      Value<DateTime?>? lastUpdate,
      Value<DateTime?>? nextUpdate,
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
      lastUpdate: lastUpdate ?? this.lastUpdate,
      nextUpdate: nextUpdate ?? this.nextUpdate,
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
    if (lastUpdate.present) {
      map['last_update'] = Variable<DateTime>(lastUpdate.value);
    }
    if (nextUpdate.present) {
      map['next_update'] = Variable<DateTime>(nextUpdate.value);
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
          ..write('lastUpdate: $lastUpdate, ')
          ..write('nextUpdate: $nextUpdate, ')
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
      type: DriftSqlType.int, requiredDuringInsert: true);
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
  static const VerificationMeta _indexMeta = const VerificationMeta('index');
  @override
  late final GeneratedColumn<int> index = GeneratedColumn<int>(
      'index', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
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
        index,
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
    if (data.containsKey('index')) {
      context.handle(
          _indexMeta, index.isAcceptableOrUnknown(data['index']!, _indexMeta));
    } else if (isInserting) {
      context.missing(_indexMeta);
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
        {mangaId, url, name},
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
      index: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}index'])!,
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
  final int index;
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
      required this.index,
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
    map['index'] = Variable<int>(index);
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
      index: Value(index),
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
      index: serializer.fromJson<int>(json['index']),
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
      'index': serializer.toJson<int>(index),
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
          int? index,
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
        index: index ?? this.index,
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
  @override
  String toString() {
    return (StringBuffer('DbChapter(')
          ..write('id: $id, ')
          ..write('mangaId: $mangaId, ')
          ..write('url: $url, ')
          ..write('name: $name, ')
          ..write('index: $index, ')
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
      index,
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
          other.index == this.index &&
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
  final Value<int> index;
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
    this.index = const Value.absent(),
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
    required int index,
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
        name = Value(name),
        index = Value(index);
  static Insertable<DbChapter> custom({
    Expression<int>? id,
    Expression<int>? mangaId,
    Expression<String>? url,
    Expression<String>? name,
    Expression<int>? index,
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
      if (index != null) 'index': index,
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
      Value<int>? index,
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
      index: index ?? this.index,
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
    if (index.present) {
      map['index'] = Variable<int>(index.value);
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
          ..write('index: $index, ')
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
      type: DriftSqlType.int, requiredDuringInsert: false);
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
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _chapterIdMeta =
      const VerificationMeta('chapterId');
  @override
  late final GeneratedColumn<int> chapterId = GeneratedColumn<int>(
      'chapter_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
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
  _$AppDatabaseManager get managers => _$AppDatabaseManager(this);
  late final $DbMangasTable dbMangas = $DbMangasTable(this);
  late final $DbChaptersTable dbChapters = $DbChaptersTable(this);
  late final $DbReadingDirectionTable dbReadingDirection =
      $DbReadingDirectionTable(this);
  late final $DbCacheEntriesTable dbCacheEntries = $DbCacheEntriesTable(this);
  late final $DbChapterHistoryTable dbChapterHistory =
      $DbChapterHistoryTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
        dbMangas,
        dbChapters,
        dbReadingDirection,
        dbCacheEntries,
        dbChapterHistory
      ];
}

typedef $$DbMangasTableInsertCompanionBuilder = DbMangasCompanion Function({
  Value<int> id,
  required String sourceId,
  Value<bool> favorite,
  Value<DateTime?> lastUpdate,
  Value<DateTime?> nextUpdate,
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
typedef $$DbMangasTableUpdateCompanionBuilder = DbMangasCompanion Function({
  Value<int> id,
  Value<String> sourceId,
  Value<bool> favorite,
  Value<DateTime?> lastUpdate,
  Value<DateTime?> nextUpdate,
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

class $$DbMangasTableTableManager extends RootTableManager<
    _$AppDatabase,
    $DbMangasTable,
    DbManga,
    $$DbMangasTableFilterComposer,
    $$DbMangasTableOrderingComposer,
    $$DbMangasTableProcessedTableManager,
    $$DbMangasTableInsertCompanionBuilder,
    $$DbMangasTableUpdateCompanionBuilder> {
  $$DbMangasTableTableManager(_$AppDatabase db, $DbMangasTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$DbMangasTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$DbMangasTableOrderingComposer(ComposerState(db, table)),
          getChildManagerBuilder: (p) =>
              $$DbMangasTableProcessedTableManager(p),
          getUpdateCompanionBuilder: ({
            Value<int> id = const Value.absent(),
            Value<String> sourceId = const Value.absent(),
            Value<bool> favorite = const Value.absent(),
            Value<DateTime?> lastUpdate = const Value.absent(),
            Value<DateTime?> nextUpdate = const Value.absent(),
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
            lastUpdate: lastUpdate,
            nextUpdate: nextUpdate,
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
          getInsertCompanionBuilder: ({
            Value<int> id = const Value.absent(),
            required String sourceId,
            Value<bool> favorite = const Value.absent(),
            Value<DateTime?> lastUpdate = const Value.absent(),
            Value<DateTime?> nextUpdate = const Value.absent(),
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
              DbMangasCompanion.insert(
            id: id,
            sourceId: sourceId,
            favorite: favorite,
            lastUpdate: lastUpdate,
            nextUpdate: nextUpdate,
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
        ));
}

class $$DbMangasTableProcessedTableManager extends ProcessedTableManager<
    _$AppDatabase,
    $DbMangasTable,
    DbManga,
    $$DbMangasTableFilterComposer,
    $$DbMangasTableOrderingComposer,
    $$DbMangasTableProcessedTableManager,
    $$DbMangasTableInsertCompanionBuilder,
    $$DbMangasTableUpdateCompanionBuilder> {
  $$DbMangasTableProcessedTableManager(super.$state);
}

class $$DbMangasTableFilterComposer
    extends FilterComposer<_$AppDatabase, $DbMangasTable> {
  $$DbMangasTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get sourceId => $state.composableBuilder(
      column: $state.table.sourceId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<bool> get favorite => $state.composableBuilder(
      column: $state.table.favorite,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<DateTime> get lastUpdate => $state.composableBuilder(
      column: $state.table.lastUpdate,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<DateTime> get nextUpdate => $state.composableBuilder(
      column: $state.table.nextUpdate,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get fetchInterval => $state.composableBuilder(
      column: $state.table.fetchInterval,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<DateTime> get dateAdded => $state.composableBuilder(
      column: $state.table.dateAdded,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get url => $state.composableBuilder(
      column: $state.table.url,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get title => $state.composableBuilder(
      column: $state.table.title,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get artist => $state.composableBuilder(
      column: $state.table.artist,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get author => $state.composableBuilder(
      column: $state.table.author,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get description => $state.composableBuilder(
      column: $state.table.description,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get genre => $state.composableBuilder(
      column: $state.table.genre,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnWithTypeConverterFilters<MangaStatus, MangaStatus, int> get status =>
      $state.composableBuilder(
          column: $state.table.status,
          builder: (column, joinBuilders) => ColumnWithTypeConverterFilters(
              column,
              joinBuilders: joinBuilders));

  ColumnFilters<String> get thumbnailUrl => $state.composableBuilder(
      column: $state.table.thumbnailUrl,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnWithTypeConverterFilters<UpdateStrategy, UpdateStrategy, int>
      get updateStrategy => $state.composableBuilder(
          column: $state.table.updateStrategy,
          builder: (column, joinBuilders) => ColumnWithTypeConverterFilters(
              column,
              joinBuilders: joinBuilders));

  ColumnFilters<bool> get initialized => $state.composableBuilder(
      column: $state.table.initialized,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<DateTime> get lastModifiedAt => $state.composableBuilder(
      column: $state.table.lastModifiedAt,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$DbMangasTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $DbMangasTable> {
  $$DbMangasTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get sourceId => $state.composableBuilder(
      column: $state.table.sourceId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<bool> get favorite => $state.composableBuilder(
      column: $state.table.favorite,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<DateTime> get lastUpdate => $state.composableBuilder(
      column: $state.table.lastUpdate,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<DateTime> get nextUpdate => $state.composableBuilder(
      column: $state.table.nextUpdate,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get fetchInterval => $state.composableBuilder(
      column: $state.table.fetchInterval,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<DateTime> get dateAdded => $state.composableBuilder(
      column: $state.table.dateAdded,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get url => $state.composableBuilder(
      column: $state.table.url,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get title => $state.composableBuilder(
      column: $state.table.title,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get artist => $state.composableBuilder(
      column: $state.table.artist,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get author => $state.composableBuilder(
      column: $state.table.author,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get description => $state.composableBuilder(
      column: $state.table.description,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get genre => $state.composableBuilder(
      column: $state.table.genre,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get status => $state.composableBuilder(
      column: $state.table.status,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get thumbnailUrl => $state.composableBuilder(
      column: $state.table.thumbnailUrl,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get updateStrategy => $state.composableBuilder(
      column: $state.table.updateStrategy,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<bool> get initialized => $state.composableBuilder(
      column: $state.table.initialized,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<DateTime> get lastModifiedAt => $state.composableBuilder(
      column: $state.table.lastModifiedAt,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

typedef $$DbChaptersTableInsertCompanionBuilder = DbChaptersCompanion Function({
  Value<int> id,
  required int mangaId,
  required String url,
  required String name,
  required int index,
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
  Value<int> index,
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

class $$DbChaptersTableTableManager extends RootTableManager<
    _$AppDatabase,
    $DbChaptersTable,
    DbChapter,
    $$DbChaptersTableFilterComposer,
    $$DbChaptersTableOrderingComposer,
    $$DbChaptersTableProcessedTableManager,
    $$DbChaptersTableInsertCompanionBuilder,
    $$DbChaptersTableUpdateCompanionBuilder> {
  $$DbChaptersTableTableManager(_$AppDatabase db, $DbChaptersTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$DbChaptersTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$DbChaptersTableOrderingComposer(ComposerState(db, table)),
          getChildManagerBuilder: (p) =>
              $$DbChaptersTableProcessedTableManager(p),
          getUpdateCompanionBuilder: ({
            Value<int> id = const Value.absent(),
            Value<int> mangaId = const Value.absent(),
            Value<String> url = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<int> index = const Value.absent(),
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
            index: index,
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
          getInsertCompanionBuilder: ({
            Value<int> id = const Value.absent(),
            required int mangaId,
            required String url,
            required String name,
            required int index,
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
            index: index,
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
        ));
}

class $$DbChaptersTableProcessedTableManager extends ProcessedTableManager<
    _$AppDatabase,
    $DbChaptersTable,
    DbChapter,
    $$DbChaptersTableFilterComposer,
    $$DbChaptersTableOrderingComposer,
    $$DbChaptersTableProcessedTableManager,
    $$DbChaptersTableInsertCompanionBuilder,
    $$DbChaptersTableUpdateCompanionBuilder> {
  $$DbChaptersTableProcessedTableManager(super.$state);
}

class $$DbChaptersTableFilterComposer
    extends FilterComposer<_$AppDatabase, $DbChaptersTable> {
  $$DbChaptersTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get mangaId => $state.composableBuilder(
      column: $state.table.mangaId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get url => $state.composableBuilder(
      column: $state.table.url,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get index => $state.composableBuilder(
      column: $state.table.index,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<DateTime> get dateUpload => $state.composableBuilder(
      column: $state.table.dateUpload,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get chapterNumber => $state.composableBuilder(
      column: $state.table.chapterNumber,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get scanlator => $state.composableBuilder(
      column: $state.table.scanlator,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<bool> get read => $state.composableBuilder(
      column: $state.table.read,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<bool> get downloaded => $state.composableBuilder(
      column: $state.table.downloaded,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<bool> get bookmark => $state.composableBuilder(
      column: $state.table.bookmark,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get lastPageRead => $state.composableBuilder(
      column: $state.table.lastPageRead,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<DateTime> get dateFetch => $state.composableBuilder(
      column: $state.table.dateFetch,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<DateTime> get lastModified => $state.composableBuilder(
      column: $state.table.lastModified,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$DbChaptersTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $DbChaptersTable> {
  $$DbChaptersTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get mangaId => $state.composableBuilder(
      column: $state.table.mangaId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get url => $state.composableBuilder(
      column: $state.table.url,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get index => $state.composableBuilder(
      column: $state.table.index,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<DateTime> get dateUpload => $state.composableBuilder(
      column: $state.table.dateUpload,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get chapterNumber => $state.composableBuilder(
      column: $state.table.chapterNumber,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get scanlator => $state.composableBuilder(
      column: $state.table.scanlator,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<bool> get read => $state.composableBuilder(
      column: $state.table.read,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<bool> get downloaded => $state.composableBuilder(
      column: $state.table.downloaded,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<bool> get bookmark => $state.composableBuilder(
      column: $state.table.bookmark,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get lastPageRead => $state.composableBuilder(
      column: $state.table.lastPageRead,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<DateTime> get dateFetch => $state.composableBuilder(
      column: $state.table.dateFetch,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<DateTime> get lastModified => $state.composableBuilder(
      column: $state.table.lastModified,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

typedef $$DbReadingDirectionTableInsertCompanionBuilder
    = DbReadingDirectionCompanion Function({
  Value<int> mangaId,
  required ReadingDirection direction,
});
typedef $$DbReadingDirectionTableUpdateCompanionBuilder
    = DbReadingDirectionCompanion Function({
  Value<int> mangaId,
  Value<ReadingDirection> direction,
});

class $$DbReadingDirectionTableTableManager extends RootTableManager<
    _$AppDatabase,
    $DbReadingDirectionTable,
    DbReadingDirectionData,
    $$DbReadingDirectionTableFilterComposer,
    $$DbReadingDirectionTableOrderingComposer,
    $$DbReadingDirectionTableProcessedTableManager,
    $$DbReadingDirectionTableInsertCompanionBuilder,
    $$DbReadingDirectionTableUpdateCompanionBuilder> {
  $$DbReadingDirectionTableTableManager(
      _$AppDatabase db, $DbReadingDirectionTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$DbReadingDirectionTableFilterComposer(ComposerState(db, table)),
          orderingComposer: $$DbReadingDirectionTableOrderingComposer(
              ComposerState(db, table)),
          getChildManagerBuilder: (p) =>
              $$DbReadingDirectionTableProcessedTableManager(p),
          getUpdateCompanionBuilder: ({
            Value<int> mangaId = const Value.absent(),
            Value<ReadingDirection> direction = const Value.absent(),
          }) =>
              DbReadingDirectionCompanion(
            mangaId: mangaId,
            direction: direction,
          ),
          getInsertCompanionBuilder: ({
            Value<int> mangaId = const Value.absent(),
            required ReadingDirection direction,
          }) =>
              DbReadingDirectionCompanion.insert(
            mangaId: mangaId,
            direction: direction,
          ),
        ));
}

class $$DbReadingDirectionTableProcessedTableManager
    extends ProcessedTableManager<
        _$AppDatabase,
        $DbReadingDirectionTable,
        DbReadingDirectionData,
        $$DbReadingDirectionTableFilterComposer,
        $$DbReadingDirectionTableOrderingComposer,
        $$DbReadingDirectionTableProcessedTableManager,
        $$DbReadingDirectionTableInsertCompanionBuilder,
        $$DbReadingDirectionTableUpdateCompanionBuilder> {
  $$DbReadingDirectionTableProcessedTableManager(super.$state);
}

class $$DbReadingDirectionTableFilterComposer
    extends FilterComposer<_$AppDatabase, $DbReadingDirectionTable> {
  $$DbReadingDirectionTableFilterComposer(super.$state);
  ColumnFilters<int> get mangaId => $state.composableBuilder(
      column: $state.table.mangaId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnWithTypeConverterFilters<ReadingDirection, ReadingDirection, int>
      get direction => $state.composableBuilder(
          column: $state.table.direction,
          builder: (column, joinBuilders) => ColumnWithTypeConverterFilters(
              column,
              joinBuilders: joinBuilders));
}

class $$DbReadingDirectionTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $DbReadingDirectionTable> {
  $$DbReadingDirectionTableOrderingComposer(super.$state);
  ColumnOrderings<int> get mangaId => $state.composableBuilder(
      column: $state.table.mangaId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get direction => $state.composableBuilder(
      column: $state.table.direction,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

typedef $$DbCacheEntriesTableInsertCompanionBuilder = DbCacheEntriesCompanion
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

class $$DbCacheEntriesTableTableManager extends RootTableManager<
    _$AppDatabase,
    $DbCacheEntriesTable,
    DbCacheEntry,
    $$DbCacheEntriesTableFilterComposer,
    $$DbCacheEntriesTableOrderingComposer,
    $$DbCacheEntriesTableProcessedTableManager,
    $$DbCacheEntriesTableInsertCompanionBuilder,
    $$DbCacheEntriesTableUpdateCompanionBuilder> {
  $$DbCacheEntriesTableTableManager(
      _$AppDatabase db, $DbCacheEntriesTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$DbCacheEntriesTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$DbCacheEntriesTableOrderingComposer(ComposerState(db, table)),
          getChildManagerBuilder: (p) =>
              $$DbCacheEntriesTableProcessedTableManager(p),
          getUpdateCompanionBuilder: ({
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
          getInsertCompanionBuilder: ({
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
        ));
}

class $$DbCacheEntriesTableProcessedTableManager extends ProcessedTableManager<
    _$AppDatabase,
    $DbCacheEntriesTable,
    DbCacheEntry,
    $$DbCacheEntriesTableFilterComposer,
    $$DbCacheEntriesTableOrderingComposer,
    $$DbCacheEntriesTableProcessedTableManager,
    $$DbCacheEntriesTableInsertCompanionBuilder,
    $$DbCacheEntriesTableUpdateCompanionBuilder> {
  $$DbCacheEntriesTableProcessedTableManager(super.$state);
}

class $$DbCacheEntriesTableFilterComposer
    extends FilterComposer<_$AppDatabase, $DbCacheEntriesTable> {
  $$DbCacheEntriesTableFilterComposer(super.$state);
  ColumnFilters<String> get key => $state.composableBuilder(
      column: $state.table.key,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get response => $state.composableBuilder(
      column: $state.table.response,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<DateTime> get expiry => $state.composableBuilder(
      column: $state.table.expiry,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$DbCacheEntriesTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $DbCacheEntriesTable> {
  $$DbCacheEntriesTableOrderingComposer(super.$state);
  ColumnOrderings<String> get key => $state.composableBuilder(
      column: $state.table.key,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get response => $state.composableBuilder(
      column: $state.table.response,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<DateTime> get expiry => $state.composableBuilder(
      column: $state.table.expiry,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

typedef $$DbChapterHistoryTableInsertCompanionBuilder
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

class $$DbChapterHistoryTableTableManager extends RootTableManager<
    _$AppDatabase,
    $DbChapterHistoryTable,
    DbChapterHistoryData,
    $$DbChapterHistoryTableFilterComposer,
    $$DbChapterHistoryTableOrderingComposer,
    $$DbChapterHistoryTableProcessedTableManager,
    $$DbChapterHistoryTableInsertCompanionBuilder,
    $$DbChapterHistoryTableUpdateCompanionBuilder> {
  $$DbChapterHistoryTableTableManager(
      _$AppDatabase db, $DbChapterHistoryTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$DbChapterHistoryTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$DbChapterHistoryTableOrderingComposer(ComposerState(db, table)),
          getChildManagerBuilder: (p) =>
              $$DbChapterHistoryTableProcessedTableManager(p),
          getUpdateCompanionBuilder: ({
            Value<int> mangaId = const Value.absent(),
            Value<int> chapterId = const Value.absent(),
            Value<DateTime> readAt = const Value.absent(),
          }) =>
              DbChapterHistoryCompanion(
            mangaId: mangaId,
            chapterId: chapterId,
            readAt: readAt,
          ),
          getInsertCompanionBuilder: ({
            Value<int> mangaId = const Value.absent(),
            required int chapterId,
            required DateTime readAt,
          }) =>
              DbChapterHistoryCompanion.insert(
            mangaId: mangaId,
            chapterId: chapterId,
            readAt: readAt,
          ),
        ));
}

class $$DbChapterHistoryTableProcessedTableManager
    extends ProcessedTableManager<
        _$AppDatabase,
        $DbChapterHistoryTable,
        DbChapterHistoryData,
        $$DbChapterHistoryTableFilterComposer,
        $$DbChapterHistoryTableOrderingComposer,
        $$DbChapterHistoryTableProcessedTableManager,
        $$DbChapterHistoryTableInsertCompanionBuilder,
        $$DbChapterHistoryTableUpdateCompanionBuilder> {
  $$DbChapterHistoryTableProcessedTableManager(super.$state);
}

class $$DbChapterHistoryTableFilterComposer
    extends FilterComposer<_$AppDatabase, $DbChapterHistoryTable> {
  $$DbChapterHistoryTableFilterComposer(super.$state);
  ColumnFilters<int> get mangaId => $state.composableBuilder(
      column: $state.table.mangaId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get chapterId => $state.composableBuilder(
      column: $state.table.chapterId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<DateTime> get readAt => $state.composableBuilder(
      column: $state.table.readAt,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$DbChapterHistoryTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $DbChapterHistoryTable> {
  $$DbChapterHistoryTableOrderingComposer(super.$state);
  ColumnOrderings<int> get mangaId => $state.composableBuilder(
      column: $state.table.mangaId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get chapterId => $state.composableBuilder(
      column: $state.table.chapterId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<DateTime> get readAt => $state.composableBuilder(
      column: $state.table.readAt,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

class _$AppDatabaseManager {
  final _$AppDatabase _db;
  _$AppDatabaseManager(this._db);
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

String _$appDatabaseHash() => r'92a246abcb363d93aa5a028712241f464abc4efe';

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

typedef AppDatabaseRef = ProviderRef<AppDatabase>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
