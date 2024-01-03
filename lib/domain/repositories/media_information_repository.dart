import 'package:allofine/core/error/failure.dart';
import 'package:allofine/domain/entities/media_information.dart';
import 'package:allofine/domain/entities/media_information_detail.dart';
import 'package:allofine/domain/entities/paginated_response.dart';
import 'package:allofine/domain/entities/pagination.dart';
import 'package:dartz/dartz.dart';

abstract class MediaInfoRepository {
  Future<Either<Failure, PaginatedResponse<MediaInformation>>> searchMedia({
    required String searchQuery,
    required PaginationRequest paginationRequest,
  });

  Future<Either<Failure, MediaInformationDetail>> getDetail(String mediaId);
}
