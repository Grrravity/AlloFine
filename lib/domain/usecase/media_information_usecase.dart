import 'package:allofine/core/error/failure.dart';
import 'package:allofine/domain/repositories/media_information_repository.dart';
import 'package:dartz/dartz.dart';

class MediaInformationUsecase {
  MediaInformationUsecase({
    required this.mediaInfoRepository,
  });

  final MediaInfoRepository mediaInfoRepository;
}
