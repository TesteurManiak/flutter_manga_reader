part of 'http_client.dart';

class HttpError implements Exception {
  const HttpError({this.message});

  final String? message;

  @override
  String toString() => 'HttpError{message: $message}';
}
