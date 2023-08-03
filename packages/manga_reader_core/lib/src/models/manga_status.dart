import 'package:freezed_annotation/freezed_annotation.dart';

enum MangaStatus {
  unknown,
  ongoing,
  completed,
  licensed,
  publishingFinished,
  cancelled,
  onHiatus,
}

class MangaStatusConverter extends JsonConverter<MangaStatus, int> {
  const MangaStatusConverter();

  @override
  MangaStatus fromJson(int json) => MangaStatus.values[json];

  @override
  int toJson(MangaStatus object) => object.index;
}
