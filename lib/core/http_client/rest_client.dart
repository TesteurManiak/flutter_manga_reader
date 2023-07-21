part of 'http_client.dart';

enum HttpMethod {
  get('GET'),
  post('POST'),
  delete('DELETE'),
  put('PUT'),
  patch('PATCH');

  const HttpMethod(this.value);

  final String value;
}

class RestClient {
  RestClient({
    required this.baseUri,
    Client? httpClient,
  }) : httpClient = httpClient ?? Client();

  final Uri baseUri;
  final Client httpClient;

  Future<HttpResult<Object, HttpError>> send({
    required HttpMethod method,
    required List<String> pathSegments,
    Map<String, Object?>? queryParameters,
    Map<String, String>? headers,
    Map<String, String>? body,
    List<ApiMultipartFile>? files,
  }) async {
    final uri = baseUri.replace(
      pathSegments: pathSegments,
      queryParameters: queryParameters?.normalize(),
    );

    final request = files != null && files.isNotEmpty
        ? await _createMultipartRequest(
            method: method,
            uri: uri,
            files: files,
            headers: headers,
            body: body,
          )
        : _createRequest(
            method: method,
            uri: uri,
            headers: headers,
            body: body,
          );

    return _sendRequest(request);
  }

  Request _createRequest({
    required HttpMethod method,
    required Uri uri,
    Map<String, String>? headers,
    Map<String, String>? body,
  }) {
    final request = Request(method.value, uri);

    if (headers != null) request.headers.addAll(headers);
    if (body != null) {
      if (request.headers.isFormData) {
        request.bodyFields = body;
      } else {
        request.body = jsonEncode(body);
      }
    }

    return request;
  }

  Future<MultipartRequest> _createMultipartRequest({
    required HttpMethod method,
    required Uri uri,
    required List<ApiMultipartFile> files,
    Map<String, String>? headers,
    Map<String, String>? body,
  }) async {
    final request = MultipartRequest(method.value, uri);

    if (headers != null) request.headers.addAll(headers);
    if (body != null) request.fields.addAll(body);

    for (final file in files) {
      request.files.add(await file.toHttpMultipartFile());
    }

    return request;
  }

  Future<HttpResult<Object, HttpError>> _sendRequest(
    BaseRequest request,
  ) async {
    try {
      final response = await httpClient.send(request);
      if (!response.isSuccessful) {
        return HttpResult.failure(HttpError(message: response.toString()));
      }

      final body = await response.stream.bytesToString();
      if (body == '') return const HttpResult.success('');

      final contentTypeHeader = response.headers[HttpHeaders.contentTypeHeader];
      if (contentTypeHeader != null) {
        final mimeType = ContentType.parse(contentTypeHeader).mimeType;
        if (mimeType == ContentType.json.mimeType) {
          final json = jsonDecode(body);
          if (json is! Object) {
            return HttpResult.failure(
              HttpError(message: 'Invalid JSON: $json'),
            );
          }

          return HttpResult.success(json);
        }
      }
      return HttpResult.success(body);
    } on TimeoutException {
      return const HttpResult.failure(HttpError(message: 'Timeout'));
    } on SocketException catch (e) {
      if (e.message.contains('timed out')) {
        return const HttpResult.failure(HttpError(message: 'Timeout'));
      }
      return HttpResult.failure(HttpError(message: e.message));
    }
  }
}

class ApiMultipartFile {
  const ApiMultipartFile.fromPath(this.filePath);

  final String filePath;
}

extension on BaseResponse {
  bool get isSuccessful => statusCode >= 200 && statusCode < 300;
}

extension on Map<String, Object?> {
  /// Normalizes a query parameters map so that each value is either a [String]
  /// or an `Iterable<String>`.
  ///
  /// Returns `null` if the map is empty.
  Map<String, Object>? normalize() {
    if (isEmpty) return null;

    final queryParameters = <String, Object>{};
    for (final e in entries) {
      final value = e.value;
      if (value != null) {
        queryParameters[e.key] = value.toQueryParameter();
      }
    }

    if (queryParameters.isEmpty) return null;

    return queryParameters;
  }
}

extension on Object {
  /// Transforms this object to a [String] or an `Iterable<String>` depending of
  /// its type.
  Object toQueryParameter({bool root = true}) {
    final obj = this;
    if (obj is String || (obj is Iterable<String> && root)) {
      return obj;
    }

    if (obj is Iterable<Object> && root) {
      return obj.map((e) => e.toQueryParameter(root: false)).toList();
    }

    if (obj is DateTime) {
      // Returns the ISO 8601 representation of the date.
      return obj.toIso8601String();
    }

    // Fallback to the string representation of the object.
    return obj.toString();
  }
}

extension on ApiMultipartFile {
  Future<MultipartFile> toHttpMultipartFile() async {
    final file = File(filePath);
    if (!file.existsSync()) {
      throw Exception('File not found: $filePath');
    }

    final bytes = await file.readAsBytes();
    final filename = filePath.split('/').last;

    return MultipartFile.fromBytes('file', bytes, filename: filename);
  }
}

extension on Map<String, String> {
  bool get isFormData {
    return this[HttpHeaders.contentTypeHeader] ==
        'application/x-www-form-urlencoded';
  }
}
