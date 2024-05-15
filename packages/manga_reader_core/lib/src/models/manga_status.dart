import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum()
enum MangaStatus {
  unknown,
  ongoing,
  completed,
  licensed,
  publishingFinished,
  cancelled,
  onHiatus,
}
