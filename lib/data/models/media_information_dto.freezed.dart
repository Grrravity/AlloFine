// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'media_information_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MediaInformationDTO _$MediaInformationDTOFromJson(Map<String, dynamic> json) {
  return _MediaInformationDTO.fromJson(json);
}

/// @nodoc
mixin _$MediaInformationDTO {
  @JsonKey(name: 'imdbID')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'Title')
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'Year')
  String get year => throw _privateConstructorUsedError;
  @JsonKey(name: 'Type')
  String get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'Poster')
  String get picture => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MediaInformationDTOCopyWith<MediaInformationDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediaInformationDTOCopyWith<$Res> {
  factory $MediaInformationDTOCopyWith(
          MediaInformationDTO value, $Res Function(MediaInformationDTO) then) =
      _$MediaInformationDTOCopyWithImpl<$Res, MediaInformationDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'imdbID') String id,
      @JsonKey(name: 'Title') String title,
      @JsonKey(name: 'Year') String year,
      @JsonKey(name: 'Type') String type,
      @JsonKey(name: 'Poster') String picture});
}

/// @nodoc
class _$MediaInformationDTOCopyWithImpl<$Res, $Val extends MediaInformationDTO>
    implements $MediaInformationDTOCopyWith<$Res> {
  _$MediaInformationDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? year = null,
    Object? type = null,
    Object? picture = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      picture: null == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MediaInformationDTOImplCopyWith<$Res>
    implements $MediaInformationDTOCopyWith<$Res> {
  factory _$$MediaInformationDTOImplCopyWith(_$MediaInformationDTOImpl value,
          $Res Function(_$MediaInformationDTOImpl) then) =
      __$$MediaInformationDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'imdbID') String id,
      @JsonKey(name: 'Title') String title,
      @JsonKey(name: 'Year') String year,
      @JsonKey(name: 'Type') String type,
      @JsonKey(name: 'Poster') String picture});
}

/// @nodoc
class __$$MediaInformationDTOImplCopyWithImpl<$Res>
    extends _$MediaInformationDTOCopyWithImpl<$Res, _$MediaInformationDTOImpl>
    implements _$$MediaInformationDTOImplCopyWith<$Res> {
  __$$MediaInformationDTOImplCopyWithImpl(_$MediaInformationDTOImpl _value,
      $Res Function(_$MediaInformationDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? year = null,
    Object? type = null,
    Object? picture = null,
  }) {
    return _then(_$MediaInformationDTOImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      picture: null == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MediaInformationDTOImpl implements _MediaInformationDTO {
  const _$MediaInformationDTOImpl(
      {@JsonKey(name: 'imdbID') required this.id,
      @JsonKey(name: 'Title') required this.title,
      @JsonKey(name: 'Year') required this.year,
      @JsonKey(name: 'Type') required this.type,
      @JsonKey(name: 'Poster') required this.picture});

  factory _$MediaInformationDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$MediaInformationDTOImplFromJson(json);

  @override
  @JsonKey(name: 'imdbID')
  final String id;
  @override
  @JsonKey(name: 'Title')
  final String title;
  @override
  @JsonKey(name: 'Year')
  final String year;
  @override
  @JsonKey(name: 'Type')
  final String type;
  @override
  @JsonKey(name: 'Poster')
  final String picture;

  @override
  String toString() {
    return 'MediaInformationDTO(id: $id, title: $title, year: $year, type: $type, picture: $picture)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MediaInformationDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.picture, picture) || other.picture == picture));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, year, type, picture);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MediaInformationDTOImplCopyWith<_$MediaInformationDTOImpl> get copyWith =>
      __$$MediaInformationDTOImplCopyWithImpl<_$MediaInformationDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MediaInformationDTOImplToJson(
      this,
    );
  }
}

abstract class _MediaInformationDTO implements MediaInformationDTO {
  const factory _MediaInformationDTO(
          {@JsonKey(name: 'imdbID') required final String id,
          @JsonKey(name: 'Title') required final String title,
          @JsonKey(name: 'Year') required final String year,
          @JsonKey(name: 'Type') required final String type,
          @JsonKey(name: 'Poster') required final String picture}) =
      _$MediaInformationDTOImpl;

  factory _MediaInformationDTO.fromJson(Map<String, dynamic> json) =
      _$MediaInformationDTOImpl.fromJson;

  @override
  @JsonKey(name: 'imdbID')
  String get id;
  @override
  @JsonKey(name: 'Title')
  String get title;
  @override
  @JsonKey(name: 'Year')
  String get year;
  @override
  @JsonKey(name: 'Type')
  String get type;
  @override
  @JsonKey(name: 'Poster')
  String get picture;
  @override
  @JsonKey(ignore: true)
  _$$MediaInformationDTOImplCopyWith<_$MediaInformationDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
