// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rating_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RatingDTO _$RatingDTOFromJson(Map<String, dynamic> json) {
  return _RatingDTO.fromJson(json);
}

/// @nodoc
mixin _$RatingDTO {
  @JsonKey(name: 'Source')
  String get source => throw _privateConstructorUsedError;
  @JsonKey(name: 'Value')
  String get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RatingDTOCopyWith<RatingDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RatingDTOCopyWith<$Res> {
  factory $RatingDTOCopyWith(RatingDTO value, $Res Function(RatingDTO) then) =
      _$RatingDTOCopyWithImpl<$Res, RatingDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'Source') String source,
      @JsonKey(name: 'Value') String value});
}

/// @nodoc
class _$RatingDTOCopyWithImpl<$Res, $Val extends RatingDTO>
    implements $RatingDTOCopyWith<$Res> {
  _$RatingDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? source = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RatingDTOImplCopyWith<$Res>
    implements $RatingDTOCopyWith<$Res> {
  factory _$$RatingDTOImplCopyWith(
          _$RatingDTOImpl value, $Res Function(_$RatingDTOImpl) then) =
      __$$RatingDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'Source') String source,
      @JsonKey(name: 'Value') String value});
}

/// @nodoc
class __$$RatingDTOImplCopyWithImpl<$Res>
    extends _$RatingDTOCopyWithImpl<$Res, _$RatingDTOImpl>
    implements _$$RatingDTOImplCopyWith<$Res> {
  __$$RatingDTOImplCopyWithImpl(
      _$RatingDTOImpl _value, $Res Function(_$RatingDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? source = null,
    Object? value = null,
  }) {
    return _then(_$RatingDTOImpl(
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RatingDTOImpl implements _RatingDTO {
  const _$RatingDTOImpl(
      {@JsonKey(name: 'Source') required this.source,
      @JsonKey(name: 'Value') required this.value});

  factory _$RatingDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$RatingDTOImplFromJson(json);

  @override
  @JsonKey(name: 'Source')
  final String source;
  @override
  @JsonKey(name: 'Value')
  final String value;

  @override
  String toString() {
    return 'RatingDTO(source: $source, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RatingDTOImpl &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, source, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RatingDTOImplCopyWith<_$RatingDTOImpl> get copyWith =>
      __$$RatingDTOImplCopyWithImpl<_$RatingDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RatingDTOImplToJson(
      this,
    );
  }
}

abstract class _RatingDTO implements RatingDTO {
  const factory _RatingDTO(
      {@JsonKey(name: 'Source') required final String source,
      @JsonKey(name: 'Value') required final String value}) = _$RatingDTOImpl;

  factory _RatingDTO.fromJson(Map<String, dynamic> json) =
      _$RatingDTOImpl.fromJson;

  @override
  @JsonKey(name: 'Source')
  String get source;
  @override
  @JsonKey(name: 'Value')
  String get value;
  @override
  @JsonKey(ignore: true)
  _$$RatingDTOImplCopyWith<_$RatingDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
