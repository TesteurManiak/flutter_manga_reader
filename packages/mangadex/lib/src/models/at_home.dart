import 'package:freezed_annotation/freezed_annotation.dart';

part 'at_home.freezed.dart';
part 'at_home.g.dart';

@freezed
class AtHome with _$AtHome {
  const factory AtHome({
    required String baseUrl,
    required AtHomeChapter chapter,
  }) = _AtHome;

  factory AtHome.fromJson(Map<String, dynamic> json) => _$AtHomeFromJson(json);
}

@freezed
class AtHomeChapter with _$AtHomeChapter {
  const factory AtHomeChapter({
    required String hash,
    required List<String> data,
    required List<String> dataSaver,
  }) = _AtHomeChapter;

  factory AtHomeChapter.fromJson(Map<String, dynamic> json) =>
      _$AtHomeChapterFromJson(json);
}

@freezed
class ImageReport with _$ImageReport {
  const factory ImageReport({
    required String url,
    required bool success,
    int? bytes,
    required bool cached,
    required int duration,
  }) = _ImageReport;
}
