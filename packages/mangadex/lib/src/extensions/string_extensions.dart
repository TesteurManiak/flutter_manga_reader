extension StringExtensions on String {
  /// Remove all html tags from a string.
  String removeHtmlTags() {
    return replaceAllMapped(
      RegExp('<[^>]*>|&[^;]+;'),
      (match) => '',
    );
  }

  /// Remove all bold and italic markdown tags from a string.
  String removeMarkdown() {
    return replaceAllMapped(
      RegExp(r'(\*|_){1,2}'),
      (match) => '',
    );
  }
}

extension NullableStringExtensions on String? {
  bool get isNullOrEmpty {
    final value = this;
    return value == null || value.isEmpty;
  }
}
