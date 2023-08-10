import 'package:intl/intl.dart';

extension StringExtensions on String {
  String removeEntitiesAndMarkdown() {
    return removeHtmlTags().removeMarkdown();
  }

  /// Remove all html tags from a string.
  String removeHtmlTags() => Bidi.stripHtmlIfNeeded(this);

  /// Remove all bold, italic and link markdown tags from a string.
  String removeMarkdown() {
    return replaceAllMapped(
      RegExp(r'\*\*|__|\*|_|`|\[.*\]\(.*\)|\n'),
      (match) => '',
    );
  }

  String ifEmpty(String Function() other) {
    return isEmpty ? other() : this;
  }

  String toLocalized() {
    switch (toLowerCase()) {
      case 'ja':
        return 'Japanese';
      case 'ko':
        return 'Korean';
      default:
        return toUpperCase();
    }
  }
}

extension NullableStringExtensions on String? {
  bool get isNullOrEmpty {
    final value = this;
    return value == null || value.isEmpty;
  }

  bool get isNotNullOrEmpty => !isNullOrEmpty;
}
