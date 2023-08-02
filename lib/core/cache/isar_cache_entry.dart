import 'package:isar/isar.dart';
import 'package:manga_reader_core/manga_reader_core.dart';

part 'isar_cache_entry.g.dart';

@collection
class IsarCacheEntry extends NetworkCacheEntry {
  IsarCacheEntry({
    required this.isarKey,
    required super.response,
    required super.expiry,
  }) : super(key: isarKey);

  Id? id;

  @Index(unique: true, replace: true)
  final String isarKey;
}
