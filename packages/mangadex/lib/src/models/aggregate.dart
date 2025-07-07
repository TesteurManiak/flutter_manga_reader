import 'package:freezed_annotation/freezed_annotation.dart';

part 'aggregate.freezed.dart';
part 'aggregate.g.dart';

@freezed
abstract class AggregateResponse with _$AggregateResponse {
  const factory AggregateResponse({
    required String result,
    Map<String, AggregateVolume>? volumes,
  }) = _AggregateResponse;

  factory AggregateResponse.fromJson(Map<String, dynamic> json) =>
      _$AggregateResponseFromJson(json);
}

@freezed
abstract class AggregateVolume with _$AggregateVolume {
  const factory AggregateVolume({
    required String volume,
    required String count,
    required Map<String, AggregateChapter> chapters,
  }) = _AggregateVolume;

  factory AggregateVolume.fromJson(Map<String, dynamic> json) =>
      _$AggregateVolumeFromJson(json);
}

@freezed
abstract class AggregateChapter with _$AggregateChapter {
  const factory AggregateChapter({
    required String chapter,
    required String count,
  }) = _AggregateChapter;

  factory AggregateChapter.fromJson(Map<String, dynamic> json) =>
      _$AggregateChapterFromJson(json);
}
