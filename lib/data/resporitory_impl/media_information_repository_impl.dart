import 'package:allofine/core/error/failure.dart';
import 'package:allofine/data/datasource/remote/media_information_source.dart';
import 'package:allofine/domain/repositories/media_information_repository.dart';
import 'package:dartz/dartz.dart';

class MediaInfoRepositoryImpl extends MediaInfoRepository {
  MediaInfoRepositoryImpl({required this.mediaInfoDataSource});

  final MediaInfoApiSource mediaInfoDataSource;
}
