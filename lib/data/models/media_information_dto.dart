import 'package:allofine/data/models/media_type_extension.dart';
import 'package:allofine/domain/entities/media_information.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'media_information_dto.freezed.dart';
part 'media_information_dto.g.dart';

@freezed
class MediaInformationDTO with _$MediaInformationDTO {
  const factory MediaInformationDTO({
    @JsonKey(name: 'imdbID') required String id,
    @JsonKey(name: 'Title') required String title,
    @JsonKey(name: 'Year') required String year,
    @JsonKey(name: 'Type') required String type,
    @JsonKey(name: 'Poster') required String picture,
  }) = _MediaInformationDTO;

  factory MediaInformationDTO.fromJson(Map<String, dynamic> json) =>
      _$MediaInformationDTOFromJson(json);
}

extension OnListMediaInformationDTOJson on List<Map<String, dynamic>> {
  List<MediaInformationDTO> get listMediaInformationDTOFromJson {
    return map<MediaInformationDTO>(
      MediaInformationDTO.fromJson,
    ).toList();
  }
}

extension OnMediaInformation on MediaInformation {
  MediaInformationDTO get toDTO {
    return MediaInformationDTO(
      id: id,
      title: title,
      year: year,
      type: type.toDTO,
      picture: picture,
    );
  }
}

extension OnMediaInformationList on List<MediaInformation> {
  List<MediaInformationDTO> get toDTO {
    return map<MediaInformationDTO>((MediaInformation e) => e.toDTO).toList();
  }
}

extension OnMediaInformationDTO on MediaInformationDTO {
  MediaInformation get toEntity {
    return MediaInformation(
      id: id,
      title: title,
      year: year,
      type: type.toEntity,
      picture: picture,
    );
  }
}

extension OnMediaInformationDTOList on List<MediaInformationDTO> {
  List<MediaInformation> get toEntity {
    if (isEmpty) return [];
    return map<MediaInformation>((MediaInformationDTO e) => e.toEntity)
        .toList();
  }
}
