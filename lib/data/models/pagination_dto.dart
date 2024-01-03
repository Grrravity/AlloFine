import 'package:allofine/domain/entities/pagination.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pagination_dto.freezed.dart';
part 'pagination_dto.g.dart';

@freezed
class PaginationDTO with _$PaginationDTO {
  const factory PaginationDTO({
    @JsonKey(name: 'totalResults') required String total,
    required int page,
  }) = _PaginationDTO;

  factory PaginationDTO.noResultFromPaginatedRequest(
    Pagination pagination,
  ) {
    return PaginationDTO(
      total: pagination.total.toString(),
      page: pagination.page,
    );
  }

  const PaginationDTO._();

  factory PaginationDTO.fromJson(Map<String, dynamic> json) =>
      _$PaginationDTOFromJson(json);
}

extension OnPagination on Pagination {
  PaginationDTO get toDTO {
    return PaginationDTO(
      total: total.toString(),
      page: page,
    );
  }
}

extension OnPaginationDTO on PaginationDTO {
  Pagination get toEntity {
    return Pagination(
      total: int.tryParse(total) ?? 0,
      page: page,
    );
  }
}
