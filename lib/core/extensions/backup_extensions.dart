import 'package:fixnum/fixnum.dart' as fixnum;
import 'package:flutter_manga_reader/gen/tachiyomi.pb.dart' as pb;
import 'package:manga_reader_core/manga_reader_core.dart';

extension BackupUpdateStrategyExtensions on pb.UpdateStrategy {
  UpdateStrategy toUpdateStrategy() {
    return switch (this) {
      pb.UpdateStrategy.ALWAYS_UPDATE => UpdateStrategy.alwaysUpdate,
      pb.UpdateStrategy.ONLY_FETCH_ONCE => UpdateStrategy.onlyFetchOnce,
      _ => throw ArgumentError.value(this, 'UpdateStrategy', 'Unknown value')
    };
  }
}

extension BackDateTimeExtensions on fixnum.Int64 {
  DateTime toDateTime() => DateTime.fromMillisecondsSinceEpoch(toInt());
}
