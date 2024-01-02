import 'package:dio/dio.dart';

class OmdbApiClient {
  static const String instanceName = 'OmdbApiClient';

  static Dio build(String baseUrl) {
    final _client = Dio(
      BaseOptions(
        baseUrl: baseUrl,
        sendTimeout: const Duration(seconds: 15),
        connectTimeout: const Duration(seconds: 15),
        receiveTimeout: const Duration(seconds: 15),
      ),
    );
    return _client;
  }
}
