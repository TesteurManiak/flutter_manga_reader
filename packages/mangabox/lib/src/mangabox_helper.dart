import 'package:intl/intl.dart';
import 'package:manga_reader_core/manga_reader_core.dart';

class MangaboxHelper {
  const MangaboxHelper();

  MangaStatus parseStatus(String? statusStr) {
    if (statusStr == null) return MangaStatus.unknown;
    if (statusStr.contains(RegExp('Ongoing', caseSensitive: false))) {
      return MangaStatus.ongoing;
    } else if (statusStr.contains(RegExp('Completed', caseSensitive: false))) {
      return MangaStatus.completed;
    }

    return MangaStatus.unknown;
  }

  DateTime parseDate(String? dateStr) {
    if (dateStr == null) return DateTime.now();
    final format = DateFormat('MMM dd,yyyy HH:mm', 'en');
    return format.parse(dateStr);
  }
}
