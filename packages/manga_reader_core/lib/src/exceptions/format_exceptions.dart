class InvalidJSONException extends FormatException {
  const InvalidJSONException([Object? source]) : super('Invalid JSON', source);
}

class InvalidHtmlException extends FormatException {
  const InvalidHtmlException([Object? source]) : super('Invalid HTML', source);
}
