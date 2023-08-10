part of 'http_client.dart';

class UserAgentClient extends BaseClient {
  UserAgentClient({
    required this.userAgent,
    Client? httpClient,
  }) : _httpClient = httpClient ?? Client();

  final String userAgent;
  final Client _httpClient;

  @override
  Future<StreamedResponse> send(BaseRequest request) {
    request.headers['user-agent'] = userAgent;
    return _httpClient.send(request);
  }
}
