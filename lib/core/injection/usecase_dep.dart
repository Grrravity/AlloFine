import 'package:allofine/core/injection/dependency_injection.dart';
import 'package:allofine/domain/repositories/media_information_repository.dart';
import 'package:allofine/domain/usecase/media_information_usecase.dart';

Future<void> registerUsecase() async {
  getIt.registerLazySingleton<MediaInformationUsecase>(
    () => MediaInformationUsecase(
      mediaInfoRepository: getIt<MediaInfoRepository>(),
    ),
  );
}
