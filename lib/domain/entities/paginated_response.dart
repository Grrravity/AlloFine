import 'package:allofine/domain/entities/pagination.dart';
import 'package:equatable/equatable.dart';

class PaginatedResponse<DataT> with EquatableMixin {
  PaginatedResponse({
    required this.pagination,
    required this.data,
  });

  factory PaginatedResponse.empty() => PaginatedResponse.singlePage([]);

  factory PaginatedResponse.singlePage(List<DataT> data) =>
      PaginatedResponse<DataT>(
        data: data,
        pagination: Pagination(
          total: data.length,
          page: 1,
        ),
      );

  final Pagination pagination;
  final List<DataT> data;

  /// Creates a copy with mapped data.
  PaginatedResponse<NewDataT> mapData<NewDataT>(
    NewDataT Function(DataT item) map,
  ) {
    return PaginatedResponse(
      data: data.map(map).toList(),
      pagination: this.pagination,
    );
  }

  @override
  List<Object?> get props => [pagination, data];
}
