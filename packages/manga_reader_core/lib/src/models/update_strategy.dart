import 'package:freezed_annotation/freezed_annotation.dart';

enum UpdateStrategy {
  @JsonValue(0)
  alwaysUpdate,
  @JsonValue(1)
  onlyFetchOnce,
}
