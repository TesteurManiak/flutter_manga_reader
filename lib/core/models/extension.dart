import 'package:flutter_manga_reader/core/converters/int_to_bool.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'extension.freezed.dart';
part 'extension.g.dart';

@freezed
class Extension with _$Extension {
  const factory Extension({
    required String name,
    required String pkg,
    required String apk,
    required String lang,
    required int code,
    required String version,
    @Default(false) @IntToBoolConverter() bool nsfw,
    @Default(false) @IntToBoolConverter() bool hasReadme,
    @Default(false) @IntToBoolConverter() bool hasChangelog,
    @Default([]) List<Source> sources,
  }) = _Extension;

  factory Extension.fromJson(Map<String, dynamic> json) =>
      _$ExtensionFromJson(json);
}

@freezed
class Source with _$Source {
  const factory Source({
    required String name,
    required String lang,
    required String id,
    required String baseUrl,
    required int versionId,
    @Default(false) @IntToBoolConverter() bool hasCloudflare,
  }) = _Source;

  factory Source.fromJson(Map<String, dynamic> json) => _$SourceFromJson(json);
}
