import 'package:allofine/core/injection/dependency_injection.dart';
import 'package:allofine/data/datasource/remote/media_information_source.dart';
import 'package:allofine/data/resporitory_impl/media_information_repository_impl.dart';
import 'package:allofine/domain/repositories/media_information_repository.dart';

Future<void> registerRepository() async {
  getIt.registerLazySingleton<MediaInfoRepository>(
    () => MediaInfoRepositoryImpl(
      mediaInfoDataSource: getIt<MediaInfoApiSource>(),
    ),
  );
}
