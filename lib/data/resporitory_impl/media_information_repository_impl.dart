import 'package:allofine/core/error/failure.dart';
import 'package:allofine/data/datasource/remote/media_information_source.dart';
import 'package:allofine/data/models/media_information_detail_dto.dart';
import 'package:allofine/data/models/media_information_dto.dart';
import 'package:allofine/data/models/paginated_response_dto.dart';
import 'package:allofine/domain/entities/media_information.dart';
import 'package:allofine/domain/entities/media_information_detail.dart';
import 'package:allofine/domain/entities/paginated_response.dart';
import 'package:allofine/domain/entities/pagination.dart';
import 'package:allofine/domain/repositories/media_information_repository.dart';
import 'package:dartz/dartz.dart';

class MediaInfoRepositoryImpl extends MediaInfoRepository {
  MediaInfoRepositoryImpl({required this.mediaInfoDataSource});

  final MediaInfoApiSource mediaInfoDataSource;

  @override
  Future<Either<Failure, PaginatedResponse<MediaInformation>>> searchMedia({
    required String searchQuery,
    required PaginationRequest paginationRequest,
  }) {
    return Failure.guard(() async {
      final response = await mediaInfoDataSource.searchMedias(
        searchQuery: searchQuery,
        paginationRequest: paginationRequest,
      );

      return response.toEntity((e) => e.toEntity);
    });
  }

  @override
  Future<Either<Failure, MediaInformationDetail>> getDetail(String mediaId) {
    return Failure.guard(() async {
      final response = await mediaInfoDataSource.getDetail(mediaId);

      return response.toEntity;
    });
  }
}
