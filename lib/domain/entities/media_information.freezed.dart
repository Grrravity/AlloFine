// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'media_information.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MediaInformation {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get year => throw _privateConstructorUsedError;
  MediaType get type => throw _privateConstructorUsedError;
  String get picture => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MediaInformationCopyWith<MediaInformation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediaInformationCopyWith<$Res> {
  factory $MediaInformationCopyWith(
          MediaInformation value, $Res Function(MediaInformation) then) =
      _$MediaInformationCopyWithImpl<$Res, MediaInformation>;
  @useResult
  $Res call(
      {String id, String title, String year, MediaType type, String picture});

  $MediaTypeCopyWith<$Res> get type;
}

/// @nodoc
class _$MediaInformationCopyWithImpl<$Res, $Val extends MediaInformation>
    implements $MediaInformationCopyWith<$Res> {
  _$MediaInformationCopyWithImpl(this._value, this._then);

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
              as MediaType,
      picture: null == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MediaTypeCopyWith<$Res> get type {
    return $MediaTypeCopyWith<$Res>(_value.type, (value) {
      return _then(_value.copyWith(type: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MediaInformationImplCopyWith<$Res>
    implements $MediaInformationCopyWith<$Res> {
  factory _$$MediaInformationImplCopyWith(_$MediaInformationImpl value,
          $Res Function(_$MediaInformationImpl) then) =
      __$$MediaInformationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id, String title, String year, MediaType type, String picture});

  @override
  $MediaTypeCopyWith<$Res> get type;
}

/// @nodoc
class __$$MediaInformationImplCopyWithImpl<$Res>
    extends _$MediaInformationCopyWithImpl<$Res, _$MediaInformationImpl>
    implements _$$MediaInformationImplCopyWith<$Res> {
  __$$MediaInformationImplCopyWithImpl(_$MediaInformationImpl _value,
      $Res Function(_$MediaInformationImpl) _then)
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
    return _then(_$MediaInformationImpl(
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
              as MediaType,
      picture: null == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MediaInformationImpl extends _MediaInformation {
  const _$MediaInformationImpl(
      {required this.id,
      required this.title,
      required this.year,
      required this.type,
      required this.picture})
      : super._();

  @override
  final String id;
  @override
  final String title;
  @override
  final String year;
  @override
  final MediaType type;
  @override
  final String picture;

  @override
  String toString() {
    return 'MediaInformation(id: $id, title: $title, year: $year, type: $type, picture: $picture)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MediaInformationImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.picture, picture) || other.picture == picture));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, title, year, type, picture);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MediaInformationImplCopyWith<_$MediaInformationImpl> get copyWith =>
      __$$MediaInformationImplCopyWithImpl<_$MediaInformationImpl>(
          this, _$identity);
}

abstract class _MediaInformation extends MediaInformation {
  const factory _MediaInformation(
      {required final String id,
      required final String title,
      required final String year,
      required final MediaType type,
      required final String picture}) = _$MediaInformationImpl;
  const _MediaInformation._() : super._();

  @override
  String get id;
  @override
  String get title;
  @override
  String get year;
  @override
  MediaType get type;
  @override
  String get picture;
  @override
  @JsonKey(ignore: true)
  _$$MediaInformationImplCopyWith<_$MediaInformationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
