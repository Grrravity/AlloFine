import 'package:freezed_annotation/freezed_annotation.dart';

part 'pagination.freezed.dart';

@freezed
class Pagination with _$Pagination {
  const factory Pagination({
    required int total,
    required int page,
  }) = _Pagination;

  const Pagination._();

  int get lastPage => (total / 10).ceil();
}

@freezed
class PaginationRequest with _$PaginationRequest {
  const factory PaginationRequest({
    required int page,
  }) = _PaginationRequest;
  const PaginationRequest._();
}
