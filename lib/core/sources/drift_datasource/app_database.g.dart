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
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
      'title', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _urlMeta = const VerificationMeta('url');
  @override
  late final GeneratedColumn<String> url = GeneratedColumn<String>(
      'url', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
      'description', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _authorMeta = const VerificationMeta('author');
  @override
  late final GeneratedColumn<String> author = GeneratedColumn<String>(
      'author', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumnWithTypeConverter<MangaStatus, int> status =
      GeneratedColumn<int>('status', aliasedName, false,
              type: DriftSqlType.int, requiredDuringInsert: true)
          .withConverter<MangaStatus>($DbMangasTable.$converterstatus);
  static const VerificationMeta _genreMeta = const VerificationMeta('genre');
  @override
  late final GeneratedColumn<String> genre = GeneratedColumn<String>(
      'genre', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
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
  static const VerificationMeta _sourceMeta = const VerificationMeta('source');
  @override
  late final GeneratedColumn<String> source = GeneratedColumn<String>(
      'source', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _langMeta = const VerificationMeta('lang');
  @override
  late final GeneratedColumn<String> lang = GeneratedColumn<String>(
      'lang', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _artistMeta = const VerificationMeta('artist');
  @override
  late final GeneratedColumn<String> artist = GeneratedColumn<String>(
      'artist', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _thumbnailUrlMeta =
      const VerificationMeta('thumbnailUrl');
  @override
  late final GeneratedColumn<String> thumbnailUrl = GeneratedColumn<String>(
      'thumbnail_url', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
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
  @override
  List<GeneratedColumn> get $columns => [
        id,
        title,
        url,
        description,
        author,
        status,
        genre,
        favorite,
        source,
        lang,
        artist,
        thumbnailUrl,
        initialized
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
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('url')) {
      context.handle(
          _urlMeta, url.isAcceptableOrUnknown(data['url']!, _urlMeta));
    } else if (isInserting) {
      context.missing(_urlMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    }
    if (data.containsKey('author')) {
      context.handle(_authorMeta,
          author.isAcceptableOrUnknown(data['author']!, _authorMeta));
    }
    context.handle(_statusMeta, const VerificationResult.success());
    if (data.containsKey('genre')) {
      context.handle(
          _genreMeta, genre.isAcceptableOrUnknown(data['genre']!, _genreMeta));
    }
    if (data.containsKey('favorite')) {
      context.handle(_favoriteMeta,
          favorite.isAcceptableOrUnknown(data['favorite']!, _favoriteMeta));
    }
    if (data.containsKey('source')) {
      context.handle(_sourceMeta,
          source.isAcceptableOrUnknown(data['source']!, _sourceMeta));
    } else if (isInserting) {
      context.missing(_sourceMeta);
    }
    if (data.containsKey('lang')) {
      context.handle(
          _langMeta, lang.isAcceptableOrUnknown(data['lang']!, _langMeta));
    } else if (isInserting) {
      context.missing(_langMeta);
    }
    if (data.containsKey('artist')) {
      context.handle(_artistMeta,
          artist.isAcceptableOrUnknown(data['artist']!, _artistMeta));
    }
    if (data.containsKey('thumbnail_url')) {
      context.handle(
          _thumbnailUrlMeta,
          thumbnailUrl.isAcceptableOrUnknown(
              data['thumbnail_url']!, _thumbnailUrlMeta));
    }
    if (data.containsKey('initialized')) {
      context.handle(
          _initializedMeta,
          initialized.isAcceptableOrUnknown(
              data['initialized']!, _initializedMeta));
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
      title: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title'])!,
      url: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}url'])!,
      description: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}description']),
      author: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}author']),
      status: $DbMangasTable.$converterstatus.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}status'])!),
      genre: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}genre']),
      favorite: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}favorite'])!,
      source: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}source'])!,
      lang: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}lang'])!,
      artist: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}artist']),
      thumbnailUrl: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}thumbnail_url']),
      initialized: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}initialized'])!,
    );
  }

  @override
  $DbMangasTable createAlias(String alias) {
    return $DbMangasTable(attachedDatabase, alias);
  }

  static JsonTypeConverter2<MangaStatus, int, int> $converterstatus =
      const EnumIndexConverter<MangaStatus>(MangaStatus.values);
}

class DbManga extends DataClass implements Insertable<DbManga> {
  final int id;
  final String title;
  final String url;
  final String? description;
  final String? author;
  final MangaStatus status;
  final String? genre;
  final bool favorite;
  final String source;
  final String lang;
  final String? artist;
  final String? thumbnailUrl;
  final bool initialized;
  const DbManga(
      {required this.id,
      required this.title,
      required this.url,
      this.description,
      this.author,
      required this.status,
      this.genre,
      required this.favorite,
      required this.source,
      required this.lang,
      this.artist,
      this.thumbnailUrl,
      required this.initialized});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['title'] = Variable<String>(title);
    map['url'] = Variable<String>(url);
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    if (!nullToAbsent || author != null) {
      map['author'] = Variable<String>(author);
    }
    {
      final converter = $DbMangasTable.$converterstatus;
      map['status'] = Variable<int>(converter.toSql(status));
    }
    if (!nullToAbsent || genre != null) {
      map['genre'] = Variable<String>(genre);
    }
    map['favorite'] = Variable<bool>(favorite);
    map['source'] = Variable<String>(source);
    map['lang'] = Variable<String>(lang);
    if (!nullToAbsent || artist != null) {
      map['artist'] = Variable<String>(artist);
    }
    if (!nullToAbsent || thumbnailUrl != null) {
      map['thumbnail_url'] = Variable<String>(thumbnailUrl);
    }
    map['initialized'] = Variable<bool>(initialized);
    return map;
  }

  DbMangasCompanion toCompanion(bool nullToAbsent) {
    return DbMangasCompanion(
      id: Value(id),
      title: Value(title),
      url: Value(url),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      author:
          author == null && nullToAbsent ? const Value.absent() : Value(author),
      status: Value(status),
      genre:
          genre == null && nullToAbsent ? const Value.absent() : Value(genre),
      favorite: Value(favorite),
      source: Value(source),
      lang: Value(lang),
      artist:
          artist == null && nullToAbsent ? const Value.absent() : Value(artist),
      thumbnailUrl: thumbnailUrl == null && nullToAbsent
          ? const Value.absent()
          : Value(thumbnailUrl),
      initialized: Value(initialized),
    );
  }

  factory DbManga.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DbManga(
      id: serializer.fromJson<int>(json['id']),
      title: serializer.fromJson<String>(json['title']),
      url: serializer.fromJson<String>(json['url']),
      description: serializer.fromJson<String?>(json['description']),
      author: serializer.fromJson<String?>(json['author']),
      status: $DbMangasTable.$converterstatus
          .fromJson(serializer.fromJson<int>(json['status'])),
      genre: serializer.fromJson<String?>(json['genre']),
      favorite: serializer.fromJson<bool>(json['favorite']),
      source: serializer.fromJson<String>(json['source']),
      lang: serializer.fromJson<String>(json['lang']),
      artist: serializer.fromJson<String?>(json['artist']),
      thumbnailUrl: serializer.fromJson<String?>(json['thumbnailUrl']),
      initialized: serializer.fromJson<bool>(json['initialized']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'title': serializer.toJson<String>(title),
      'url': serializer.toJson<String>(url),
      'description': serializer.toJson<String?>(description),
      'author': serializer.toJson<String?>(author),
      'status': serializer
          .toJson<int>($DbMangasTable.$converterstatus.toJson(status)),
      'genre': serializer.toJson<String?>(genre),
      'favorite': serializer.toJson<bool>(favorite),
      'source': serializer.toJson<String>(source),
      'lang': serializer.toJson<String>(lang),
      'artist': serializer.toJson<String?>(artist),
      'thumbnailUrl': serializer.toJson<String?>(thumbnailUrl),
      'initialized': serializer.toJson<bool>(initialized),
    };
  }

  DbManga copyWith(
          {int? id,
          String? title,
          String? url,
          Value<String?> description = const Value.absent(),
          Value<String?> author = const Value.absent(),
          MangaStatus? status,
          Value<String?> genre = const Value.absent(),
          bool? favorite,
          String? source,
          String? lang,
          Value<String?> artist = const Value.absent(),
          Value<String?> thumbnailUrl = const Value.absent(),
          bool? initialized}) =>
      DbManga(
        id: id ?? this.id,
        title: title ?? this.title,
        url: url ?? this.url,
        description: description.present ? description.value : this.description,
        author: author.present ? author.value : this.author,
        status: status ?? this.status,
        genre: genre.present ? genre.value : this.genre,
        favorite: favorite ?? this.favorite,
        source: source ?? this.source,
        lang: lang ?? this.lang,
        artist: artist.present ? artist.value : this.artist,
        thumbnailUrl:
            thumbnailUrl.present ? thumbnailUrl.value : this.thumbnailUrl,
        initialized: initialized ?? this.initialized,
      );
  @override
  String toString() {
    return (StringBuffer('DbManga(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('url: $url, ')
          ..write('description: $description, ')
          ..write('author: $author, ')
          ..write('status: $status, ')
          ..write('genre: $genre, ')
          ..write('favorite: $favorite, ')
          ..write('source: $source, ')
          ..write('lang: $lang, ')
          ..write('artist: $artist, ')
          ..write('thumbnailUrl: $thumbnailUrl, ')
          ..write('initialized: $initialized')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, title, url, description, author, status,
      genre, favorite, source, lang, artist, thumbnailUrl, initialized);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DbManga &&
          other.id == this.id &&
          other.title == this.title &&
          other.url == this.url &&
          other.description == this.description &&
          other.author == this.author &&
          other.status == this.status &&
          other.genre == this.genre &&
          other.favorite == this.favorite &&
          other.source == this.source &&
          other.lang == this.lang &&
          other.artist == this.artist &&
          other.thumbnailUrl == this.thumbnailUrl &&
          other.initialized == this.initialized);
}

class DbMangasCompanion extends UpdateCompanion<DbManga> {
  final Value<int> id;
  final Value<String> title;
  final Value<String> url;
  final Value<String?> description;
  final Value<String?> author;
  final Value<MangaStatus> status;
  final Value<String?> genre;
  final Value<bool> favorite;
  final Value<String> source;
  final Value<String> lang;
  final Value<String?> artist;
  final Value<String?> thumbnailUrl;
  final Value<bool> initialized;
  const DbMangasCompanion({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.url = const Value.absent(),
    this.description = const Value.absent(),
    this.author = const Value.absent(),
    this.status = const Value.absent(),
    this.genre = const Value.absent(),
    this.favorite = const Value.absent(),
    this.source = const Value.absent(),
    this.lang = const Value.absent(),
    this.artist = const Value.absent(),
    this.thumbnailUrl = const Value.absent(),
    this.initialized = const Value.absent(),
  });
  DbMangasCompanion.insert({
    this.id = const Value.absent(),
    required String title,
    required String url,
    this.description = const Value.absent(),
    this.author = const Value.absent(),
    required MangaStatus status,
    this.genre = const Value.absent(),
    this.favorite = const Value.absent(),
    required String source,
    required String lang,
    this.artist = const Value.absent(),
    this.thumbnailUrl = const Value.absent(),
    this.initialized = const Value.absent(),
  })  : title = Value(title),
        url = Value(url),
        status = Value(status),
        source = Value(source),
        lang = Value(lang);
  static Insertable<DbManga> custom({
    Expression<int>? id,
    Expression<String>? title,
    Expression<String>? url,
    Expression<String>? description,
    Expression<String>? author,
    Expression<int>? status,
    Expression<String>? genre,
    Expression<bool>? favorite,
    Expression<String>? source,
    Expression<String>? lang,
    Expression<String>? artist,
    Expression<String>? thumbnailUrl,
    Expression<bool>? initialized,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (url != null) 'url': url,
      if (description != null) 'description': description,
      if (author != null) 'author': author,
      if (status != null) 'status': status,
      if (genre != null) 'genre': genre,
      if (favorite != null) 'favorite': favorite,
      if (source != null) 'source': source,
      if (lang != null) 'lang': lang,
      if (artist != null) 'artist': artist,
      if (thumbnailUrl != null) 'thumbnail_url': thumbnailUrl,
      if (initialized != null) 'initialized': initialized,
    });
  }

  DbMangasCompanion copyWith(
      {Value<int>? id,
      Value<String>? title,
      Value<String>? url,
      Value<String?>? description,
      Value<String?>? author,
      Value<MangaStatus>? status,
      Value<String?>? genre,
      Value<bool>? favorite,
      Value<String>? source,
      Value<String>? lang,
      Value<String?>? artist,
      Value<String?>? thumbnailUrl,
      Value<bool>? initialized}) {
    return DbMangasCompanion(
      id: id ?? this.id,
      title: title ?? this.title,
      url: url ?? this.url,
      description: description ?? this.description,
      author: author ?? this.author,
      status: status ?? this.status,
      genre: genre ?? this.genre,
      favorite: favorite ?? this.favorite,
      source: source ?? this.source,
      lang: lang ?? this.lang,
      artist: artist ?? this.artist,
      thumbnailUrl: thumbnailUrl ?? this.thumbnailUrl,
      initialized: initialized ?? this.initialized,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (url.present) {
      map['url'] = Variable<String>(url.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (author.present) {
      map['author'] = Variable<String>(author.value);
    }
    if (status.present) {
      final converter = $DbMangasTable.$converterstatus;

      map['status'] = Variable<int>(converter.toSql(status.value));
    }
    if (genre.present) {
      map['genre'] = Variable<String>(genre.value);
    }
    if (favorite.present) {
      map['favorite'] = Variable<bool>(favorite.value);
    }
    if (source.present) {
      map['source'] = Variable<String>(source.value);
    }
    if (lang.present) {
      map['lang'] = Variable<String>(lang.value);
    }
    if (artist.present) {
      map['artist'] = Variable<String>(artist.value);
    }
    if (thumbnailUrl.present) {
      map['thumbnail_url'] = Variable<String>(thumbnailUrl.value);
    }
    if (initialized.present) {
      map['initialized'] = Variable<bool>(initialized.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DbMangasCompanion(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('url: $url, ')
          ..write('description: $description, ')
          ..write('author: $author, ')
          ..write('status: $status, ')
          ..write('genre: $genre, ')
          ..write('favorite: $favorite, ')
          ..write('source: $source, ')
          ..write('lang: $lang, ')
          ..write('artist: $artist, ')
          ..write('thumbnailUrl: $thumbnailUrl, ')
          ..write('initialized: $initialized')
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
          ..write('bookmark: $bookmark, ')
          ..write('lastPageRead: $lastPageRead, ')
          ..write('dateFetch: $dateFetch, ')
          ..write('lastModified: $lastModified')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  late final $DbMangasTable dbMangas = $DbMangasTable(this);
  late final $DbChaptersTable dbChapters = $DbChaptersTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [dbMangas, dbChapters];
}
