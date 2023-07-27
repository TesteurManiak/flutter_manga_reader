extension StringExtensions on String {
  String removeEntitiesAndMarkdown() {
    return removeHtmlTags().removeMarkdown();
  }

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
