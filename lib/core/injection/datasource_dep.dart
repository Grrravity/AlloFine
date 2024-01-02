import 'package:allofine/core/injection/dependency_injection.dart';
import 'package:allofine/data/client/omdb_api_client.dart';
import 'package:allofine/data/client/utils/rest_api_handler.dart';
import 'package:allofine/data/datasource/remote/media_information_source.dart';
import 'package:dio/dio.dart';

Future<void> registerDataSources() async {
  getIt.registerLazySingleton<MediaInfoApiSource>(
    () => MediaInfoApiSource(
      client: RestApiHandler(
        client: getIt<Dio>(
          instanceName: OmdbApiClient.instanceName,
        ),
      ),
    ),
  );
}
