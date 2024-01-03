import 'package:allofine/core/error/failure.dart';
import 'package:allofine/data/client/utils/response_extension.dart';
import 'package:allofine/data/models/pagination_dto.dart';
import 'package:allofine/domain/entities/paginated_response.dart';
import 'package:allofine/domain/entities/pagination.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';

class PaginatedResponseDTO<DataT> with EquatableMixin {
  PaginatedResponseDTO({
    required this.pagination,
    required this.data,
  });

  factory PaginatedResponseDTO.empty(PaginationRequest paginationRequest) =>
      PaginatedResponseDTO<DataT>(
        data: [],
        pagination: PaginationDTO(
          page: paginationRequest.page,
          total: '0',
        ),
      );

  factory PaginatedResponseDTO.fromNestedListResponse({
    required Response<dynamic> response,
    required String dataKey,
    required DataT Function(Map<String, dynamic> json) toJson,
    required PaginationRequest paginationRequest,
  }) =>
      PaginatedResponseDTO<DataT>(
        data: (response.item[dataKey] as List)
            .cast<Map<String, dynamic>>()
            .map(toJson)
            .toList(),
        pagination: PaginationDTO.fromJson(
          {'totalResults': (response.item['totalResults'] as String)}..addAll(
              {'page': paginationRequest.page},
            ),
        ),
      );

  final PaginationDTO pagination;
  final List<DataT> data;

  /// Creates a copy with mapped data.
  PaginatedResponseDTO<NewDataT> mapData<NewDataT>(
    NewDataT Function(DataT item) map,
  ) {
    return PaginatedResponseDTO(
      data: data.map(map).toList(),
      pagination: this.pagination,
    );
  }

  @override
  List<Object?> get props => [pagination, data];
}

extension OnPaginatedResponseDTO<DataT> on PaginatedResponseDTO<DataT>? {
  PaginatedResponse<NewDataT> toEntity<NewDataT>(
    NewDataT Function(DataT) map,
  ) {
    if (this == null) throw Failure.elementNotFound;
    return PaginatedResponse<NewDataT>(
      data: this!.data.map(map).toList(),
      pagination: this!.pagination.toEntity,
    );
  }
}
