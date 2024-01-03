import 'package:allofine/core/error/failure.dart';
import 'package:allofine/domain/entities/media_information.dart';
import 'package:allofine/domain/entities/media_information_detail.dart';
import 'package:allofine/domain/entities/paginated_response.dart';
import 'package:allofine/domain/entities/pagination.dart';
import 'package:allofine/domain/repositories/media_information_repository.dart';
import 'package:dartz/dartz.dart';

class MediaInformationUsecase {
  MediaInformationUsecase({
    required this.mediaInfoRepository,
  });

  final MediaInfoRepository mediaInfoRepository;

  Future<Either<Failure, PaginatedResponse<MediaInformation>>> searchMedia({
    required String searchQuery,
    required PaginationRequest paginationRequest,
  }) async {
    final topicDiscussionOrFailure = await mediaInfoRepository.searchMedia(
      searchQuery: searchQuery,
      paginationRequest: paginationRequest,
    );

    return topicDiscussionOrFailure;
  }

  Future<Either<Failure, MediaInformationDetail>> getDetail(
    String mediaId,
  ) async {
    final listOrFailure = await mediaInfoRepository.getDetail(mediaId);

    return listOrFailure;
  }
}
