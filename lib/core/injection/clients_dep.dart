import 'package:allofine/core/config.dart';
import 'package:allofine/core/injection/dependency_injection.dart';
import 'package:allofine/data/client/omdb_api_client.dart';
import 'package:allofine/data/client/utils/rest_api_interceptor.dart';
import 'package:dio/dio.dart';

Future<void> registerApiClients() async {
  getIt.registerLazySingleton<Dio>(
    () => OmdbApiClient.build(
      omdbBaseUrl,
    ),
    instanceName: OmdbApiClient.instanceName,
  );
}

void addDioInterceptor() {
  getIt<Dio>(instanceName: OmdbApiClient.instanceName).interceptors.add(
        DioInterceptor(
          clientName: OmdbApiClient.instanceName,
          injectQueryParameter: {'apikey': omdbApiKey},
        ),
      );
}
