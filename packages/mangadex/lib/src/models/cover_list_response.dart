import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mangadex/src/models/cover.dart';

part 'cover_list_response.freezed.dart';
part 'cover_list_response.g.dart';

@freezed
class CoverListResponse with _$CoverListResponse {
  const factory CoverListResponse({
    @Default(<CoverArt>[]) List<CoverArt> data,
    @Default(0) int limit,
    @Default(0) int offset,
    @Default(0) int total,
  }) = _CoverListResponse;

  factory CoverListResponse.fromJson(Map<String, dynamic> json) =>
      _$CoverListResponseFromJson(json);
}
