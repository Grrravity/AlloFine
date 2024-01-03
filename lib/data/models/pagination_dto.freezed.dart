// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pagination_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PaginationDTO _$PaginationDTOFromJson(Map<String, dynamic> json) {
  return _PaginationDTO.fromJson(json);
}

/// @nodoc
mixin _$PaginationDTO {
  @JsonKey(name: 'totalResults')
  String get total => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaginationDTOCopyWith<PaginationDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginationDTOCopyWith<$Res> {
  factory $PaginationDTOCopyWith(
          PaginationDTO value, $Res Function(PaginationDTO) then) =
      _$PaginationDTOCopyWithImpl<$Res, PaginationDTO>;
  @useResult
  $Res call({@JsonKey(name: 'totalResults') String total, int page});
}

/// @nodoc
class _$PaginationDTOCopyWithImpl<$Res, $Val extends PaginationDTO>
    implements $PaginationDTOCopyWith<$Res> {
  _$PaginationDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? page = null,
  }) {
    return _then(_value.copyWith(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as String,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaginationDTOImplCopyWith<$Res>
    implements $PaginationDTOCopyWith<$Res> {
  factory _$$PaginationDTOImplCopyWith(
          _$PaginationDTOImpl value, $Res Function(_$PaginationDTOImpl) then) =
      __$$PaginationDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'totalResults') String total, int page});
}

/// @nodoc
class __$$PaginationDTOImplCopyWithImpl<$Res>
    extends _$PaginationDTOCopyWithImpl<$Res, _$PaginationDTOImpl>
    implements _$$PaginationDTOImplCopyWith<$Res> {
  __$$PaginationDTOImplCopyWithImpl(
      _$PaginationDTOImpl _value, $Res Function(_$PaginationDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? page = null,
  }) {
    return _then(_$PaginationDTOImpl(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as String,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaginationDTOImpl extends _PaginationDTO {
  const _$PaginationDTOImpl(
      {@JsonKey(name: 'totalResults') required this.total, required this.page})
      : super._();

  factory _$PaginationDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaginationDTOImplFromJson(json);

  @override
  @JsonKey(name: 'totalResults')
  final String total;
  @override
  final int page;

  @override
  String toString() {
    return 'PaginationDTO(total: $total, page: $page)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaginationDTOImpl &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.page, page) || other.page == page));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, total, page);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaginationDTOImplCopyWith<_$PaginationDTOImpl> get copyWith =>
      __$$PaginationDTOImplCopyWithImpl<_$PaginationDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaginationDTOImplToJson(
      this,
    );
  }
}

abstract class _PaginationDTO extends PaginationDTO {
  const factory _PaginationDTO(
      {@JsonKey(name: 'totalResults') required final String total,
      required final int page}) = _$PaginationDTOImpl;
  const _PaginationDTO._() : super._();

  factory _PaginationDTO.fromJson(Map<String, dynamic> json) =
      _$PaginationDTOImpl.fromJson;

  @override
  @JsonKey(name: 'totalResults')
  String get total;
  @override
  int get page;
  @override
  @JsonKey(ignore: true)
  _$$PaginationDTOImplCopyWith<_$PaginationDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
