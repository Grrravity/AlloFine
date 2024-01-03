import 'package:freezed_annotation/freezed_annotation.dart';

part 'media_type.freezed.dart';

@freezed
class MediaType with _$MediaType {
  const factory MediaType.series() = MediaTypeSeries;
  const factory MediaType.movie() = MediaTypeMovie;
  const factory MediaType.other({
    required String label,
  }) = MediaTypeOther;
  const MediaType._();
}
