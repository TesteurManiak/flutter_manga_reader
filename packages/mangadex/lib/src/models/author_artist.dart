import 'package:freezed_annotation/freezed_annotation.dart';

part 'author_artist.freezed.dart';
part 'author_artist.g.dart';

@freezed
class AuthorArtistAttributes with _$AuthorArtistAttributes {
  const factory AuthorArtistAttributes({
    required String name,
  }) = _AuthorArtistAttributes;

  factory AuthorArtistAttributes.fromJson(Map<String, dynamic> json) =>
      _$AuthorArtistAttributesFromJson(json);
}
