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
  onHiatus;

  static MangaStatus fromIndex(int index) {
    MangaStatus.values.elementAt(index);
    return switch (index) {
      0 => MangaStatus.unknown,
      1 => MangaStatus.ongoing,
      2 => MangaStatus.completed,
      3 => MangaStatus.licensed,
      4 => MangaStatus.publishingFinished,
      5 => MangaStatus.cancelled,
      6 => MangaStatus.onHiatus,
      _ => throw FormatException('Unknown index', index),
    };
  }

  static MangaStatus? tryFromIndex(int index) {
    try {
      return fromIndex(index);
    } on FormatException {
      return null;
    }
  }
}
