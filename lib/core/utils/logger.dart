import 'dart:developer' as developer;

import 'package:flutter/widgets.dart';
import 'package:logging/logging.dart';

const _kLoggerName = 'Flutter Manga Reader';

final log = Logger(_kLoggerName);

void setupLogging() {
  log.onRecord.listen((record) {
    // Needed to not print duplicates of logs from packages such as go_router
    if (record.loggerName != _kLoggerName) {
      return;
    }

    if (record.level >= Level.SEVERE) {
      final error = record.error;
      FlutterError.dumpErrorToConsole(
        FlutterErrorDetails(
          exception: error is Exception ? error : Exception(error),
          stack: record.stackTrace,
          library: record.loggerName,
          context: ErrorDescription(record.message),
        ),
      );
    } else {
      developer.log(
        record.message,
        time: record.time,
        sequenceNumber: record.sequenceNumber,
        level: record.level.value,
        name: record.loggerName,
        zone: record.zone,
        error: record.error,
        stackTrace: record.stackTrace,
      );
    }
  });

  FlutterError.onError = (details) {
    log.severe(details.exceptionAsString(), details.exception, details.stack);
  };
}
