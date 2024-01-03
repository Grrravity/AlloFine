// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pagination_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaginationDTOImpl _$$PaginationDTOImplFromJson(Map<String, dynamic> json) =>
    _$PaginationDTOImpl(
      total: json['totalResults'] as String,
      page: json['page'] as int,
    );

Map<String, dynamic> _$$PaginationDTOImplToJson(_$PaginationDTOImpl instance) =>
    <String, dynamic>{
      'totalResults': instance.total,
      'page': instance.page,
    };
