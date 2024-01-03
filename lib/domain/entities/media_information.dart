import 'package:allofine/domain/entities/media_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'media_information.freezed.dart';

@freezed
class MediaInformation with _$MediaInformation {
  const factory MediaInformation({
    required String id,
    required String title,
    required String year,
    required MediaType type,
    required String picture,
  }) = _MediaInformation;

  const MediaInformation._();
}

extension XMediaInformation on MediaInformation {
  String? get pictureUrl => picture == 'N/A' ? null : picture;
}
