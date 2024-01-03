import 'package:allofine/core/error/failure.dart';
import 'package:allofine/data/client/utils/response_extension.dart';
import 'package:allofine/data/client/utils/rest_api_handler.dart';
import 'package:allofine/data/models/media_information_detail_dto.dart';
import 'package:allofine/data/models/media_information_dto.dart';
import 'package:allofine/data/models/paginated_response_dto.dart';
import 'package:allofine/domain/entities/pagination.dart';

class MediaInfoApiSource {
  MediaInfoApiSource({required this.client});

  final RestApiHandler client;

  static String baseEndpoint = '/';

  Future<PaginatedResponseDTO<MediaInformationDTO>> searchMedias({
    required String searchQuery,
    required PaginationRequest paginationRequest,
  }) async {
    final response = await client.get(
      route: baseEndpoint,
      queryParameters: {
        's': searchQuery,
        'page': paginationRequest.page,
      },
    );
    final failure = response.handleFailure();

    if (failure == Failure.elementNotFound) {
      return PaginatedResponseDTO.empty(paginationRequest);
    }

    return PaginatedResponseDTO.fromNestedListResponse(
      response: response,
      dataKey: 'Search',
      toJson: MediaInformationDTO.fromJson,
      paginationRequest: paginationRequest,
    );
  }

  Future<MediaInformationDetailDTO> getDetail(String mediaId) async {
    final response = await client.get(
      route: baseEndpoint,
      queryParameters: {'i': mediaId, 'plot': 'full'},
    );

    return MediaInformationDetailDTO.fromJson(response.item); // TODO Implement
  }
}
