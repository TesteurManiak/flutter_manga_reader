import 'package:freezed_annotation/freezed_annotation.dart';

enum MangaStatus {
  @JsonValue(0)
  unknown,
  @JsonValue(1)
  ongoing,
  @JsonValue(2)
  completed,
  @JsonValue(3)
  licensed,
  @JsonValue(4)
  publishingFinished,
  @JsonValue(5)
  cancelled,
  @JsonValue(6)
  onHiatus,
}
