// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'media_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MediaType {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() series,
    required TResult Function() movie,
    required TResult Function(String label) other,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? series,
    TResult? Function()? movie,
    TResult? Function(String label)? other,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? series,
    TResult Function()? movie,
    TResult Function(String label)? other,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MediaTypeSeries value) series,
    required TResult Function(MediaTypeMovie value) movie,
    required TResult Function(MediaTypeOther value) other,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MediaTypeSeries value)? series,
    TResult? Function(MediaTypeMovie value)? movie,
    TResult? Function(MediaTypeOther value)? other,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MediaTypeSeries value)? series,
    TResult Function(MediaTypeMovie value)? movie,
    TResult Function(MediaTypeOther value)? other,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediaTypeCopyWith<$Res> {
  factory $MediaTypeCopyWith(MediaType value, $Res Function(MediaType) then) =
      _$MediaTypeCopyWithImpl<$Res, MediaType>;
}

/// @nodoc
class _$MediaTypeCopyWithImpl<$Res, $Val extends MediaType>
    implements $MediaTypeCopyWith<$Res> {
  _$MediaTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$MediaTypeSeriesImplCopyWith<$Res> {
  factory _$$MediaTypeSeriesImplCopyWith(_$MediaTypeSeriesImpl value,
          $Res Function(_$MediaTypeSeriesImpl) then) =
      __$$MediaTypeSeriesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MediaTypeSeriesImplCopyWithImpl<$Res>
    extends _$MediaTypeCopyWithImpl<$Res, _$MediaTypeSeriesImpl>
    implements _$$MediaTypeSeriesImplCopyWith<$Res> {
  __$$MediaTypeSeriesImplCopyWithImpl(
      _$MediaTypeSeriesImpl _value, $Res Function(_$MediaTypeSeriesImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MediaTypeSeriesImpl extends MediaTypeSeries {
  const _$MediaTypeSeriesImpl() : super._();

  @override
  String toString() {
    return 'MediaType.series()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MediaTypeSeriesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() series,
    required TResult Function() movie,
    required TResult Function(String label) other,
  }) {
    return series();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? series,
    TResult? Function()? movie,
    TResult? Function(String label)? other,
  }) {
    return series?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? series,
    TResult Function()? movie,
    TResult Function(String label)? other,
    required TResult orElse(),
  }) {
    if (series != null) {
      return series();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MediaTypeSeries value) series,
    required TResult Function(MediaTypeMovie value) movie,
    required TResult Function(MediaTypeOther value) other,
  }) {
    return series(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MediaTypeSeries value)? series,
    TResult? Function(MediaTypeMovie value)? movie,
    TResult? Function(MediaTypeOther value)? other,
  }) {
    return series?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MediaTypeSeries value)? series,
    TResult Function(MediaTypeMovie value)? movie,
    TResult Function(MediaTypeOther value)? other,
    required TResult orElse(),
  }) {
    if (series != null) {
      return series(this);
    }
    return orElse();
  }
}

abstract class MediaTypeSeries extends MediaType {
  const factory MediaTypeSeries() = _$MediaTypeSeriesImpl;
  const MediaTypeSeries._() : super._();
}

/// @nodoc
abstract class _$$MediaTypeMovieImplCopyWith<$Res> {
  factory _$$MediaTypeMovieImplCopyWith(_$MediaTypeMovieImpl value,
          $Res Function(_$MediaTypeMovieImpl) then) =
      __$$MediaTypeMovieImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MediaTypeMovieImplCopyWithImpl<$Res>
    extends _$MediaTypeCopyWithImpl<$Res, _$MediaTypeMovieImpl>
    implements _$$MediaTypeMovieImplCopyWith<$Res> {
  __$$MediaTypeMovieImplCopyWithImpl(
      _$MediaTypeMovieImpl _value, $Res Function(_$MediaTypeMovieImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MediaTypeMovieImpl extends MediaTypeMovie {
  const _$MediaTypeMovieImpl() : super._();

  @override
  String toString() {
    return 'MediaType.movie()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MediaTypeMovieImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() series,
    required TResult Function() movie,
    required TResult Function(String label) other,
  }) {
    return movie();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? series,
    TResult? Function()? movie,
    TResult? Function(String label)? other,
  }) {
    return movie?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? series,
    TResult Function()? movie,
    TResult Function(String label)? other,
    required TResult orElse(),
  }) {
    if (movie != null) {
      return movie();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MediaTypeSeries value) series,
    required TResult Function(MediaTypeMovie value) movie,
    required TResult Function(MediaTypeOther value) other,
  }) {
    return movie(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MediaTypeSeries value)? series,
    TResult? Function(MediaTypeMovie value)? movie,
    TResult? Function(MediaTypeOther value)? other,
  }) {
    return movie?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MediaTypeSeries value)? series,
    TResult Function(MediaTypeMovie value)? movie,
    TResult Function(MediaTypeOther value)? other,
    required TResult orElse(),
  }) {
    if (movie != null) {
      return movie(this);
    }
    return orElse();
  }
}

abstract class MediaTypeMovie extends MediaType {
  const factory MediaTypeMovie() = _$MediaTypeMovieImpl;
  const MediaTypeMovie._() : super._();
}

/// @nodoc
abstract class _$$MediaTypeOtherImplCopyWith<$Res> {
  factory _$$MediaTypeOtherImplCopyWith(_$MediaTypeOtherImpl value,
          $Res Function(_$MediaTypeOtherImpl) then) =
      __$$MediaTypeOtherImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String label});
}

/// @nodoc
class __$$MediaTypeOtherImplCopyWithImpl<$Res>
    extends _$MediaTypeCopyWithImpl<$Res, _$MediaTypeOtherImpl>
    implements _$$MediaTypeOtherImplCopyWith<$Res> {
  __$$MediaTypeOtherImplCopyWithImpl(
      _$MediaTypeOtherImpl _value, $Res Function(_$MediaTypeOtherImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
  }) {
    return _then(_$MediaTypeOtherImpl(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MediaTypeOtherImpl extends MediaTypeOther {
  const _$MediaTypeOtherImpl({required this.label}) : super._();

  @override
  final String label;

  @override
  String toString() {
    return 'MediaType.other(label: $label)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MediaTypeOtherImpl &&
            (identical(other.label, label) || other.label == label));
  }

  @override
  int get hashCode => Object.hash(runtimeType, label);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MediaTypeOtherImplCopyWith<_$MediaTypeOtherImpl> get copyWith =>
      __$$MediaTypeOtherImplCopyWithImpl<_$MediaTypeOtherImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() series,
    required TResult Function() movie,
    required TResult Function(String label) other,
  }) {
    return other(label);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? series,
    TResult? Function()? movie,
    TResult? Function(String label)? other,
  }) {
    return other?.call(label);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? series,
    TResult Function()? movie,
    TResult Function(String label)? other,
    required TResult orElse(),
  }) {
    if (other != null) {
      return other(label);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MediaTypeSeries value) series,
    required TResult Function(MediaTypeMovie value) movie,
    required TResult Function(MediaTypeOther value) other,
  }) {
    return other(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MediaTypeSeries value)? series,
    TResult? Function(MediaTypeMovie value)? movie,
    TResult? Function(MediaTypeOther value)? other,
  }) {
    return other?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MediaTypeSeries value)? series,
    TResult Function(MediaTypeMovie value)? movie,
    TResult Function(MediaTypeOther value)? other,
    required TResult orElse(),
  }) {
    if (other != null) {
      return other(this);
    }
    return orElse();
  }
}

abstract class MediaTypeOther extends MediaType {
  const factory MediaTypeOther({required final String label}) =
      _$MediaTypeOtherImpl;
  const MediaTypeOther._() : super._();

  String get label;
  @JsonKey(ignore: true)
  _$$MediaTypeOtherImplCopyWith<_$MediaTypeOtherImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
