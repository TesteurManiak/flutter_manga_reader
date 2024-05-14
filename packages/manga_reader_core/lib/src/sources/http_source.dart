import 'dart:convert';
import 'dart:math' as math;

import 'package:crypto/crypto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manga_reader_core/src/sources/manga_datasource.dart';

mixin HttpSource on MangaDatasource {
  int get versionId => 1;

  @protected
  int generateId() {
    final key = "${name.toLowerCase()}/$lang/$versionId";
    final bytes = md5.convert(utf8.encode(key)).bytes;

    int result = 0;
    for (int i = 0; i < 8; i++) {
      result |= (bytes[i] & 0xff) << (8 * (7 - i));
    }
    return result & (math.pow(2, 63).toInt() - 1);
  }

  @override
  late final String id = generateId().toString();
}
