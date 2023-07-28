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

  /// Remove all bold, italic and link markdown tags from a string.
  String removeMarkdown() {
    return replaceAllMapped(
      RegExp(r'\*\*|__|\*|_|`|\[.*\]\(.*\)|\n'),
      (match) => '',
    );
  }
}
