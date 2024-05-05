import 'package:json_annotation/json_annotation.dart';

class IntToBoolConverter extends JsonConverter<bool, int> {
  const IntToBoolConverter();

  @override
  bool fromJson(int json) => json == 1;

  @override
  int toJson(bool object) => object ? 1 : 0;
}
