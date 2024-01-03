import 'package:allofine/data/models/media_type_extension.dart';
import 'package:allofine/data/models/rating_dto.dart';
import 'package:allofine/domain/entities/media_information_detail.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'media_information_detail_dto.freezed.dart';
part 'media_information_detail_dto.g.dart';

@freezed
class MediaInformationDetailDTO with _$MediaInformationDetailDTO {
  @JsonSerializable(explicitToJson: true)
  const factory MediaInformationDetailDTO({
    @JsonKey(name: 'imdbID') required String id,
    @JsonKey(name: 'Title') required String title,
    @JsonKey(name: 'Year') required String year,
    @JsonKey(name: 'Rated') required String rated,
    @JsonKey(name: 'Released') required String released,
    @JsonKey(name: 'Runtime') required String runtime,
    @JsonKey(name: 'Genre') required String genre,
    @JsonKey(name: 'Director') required String director,
    @JsonKey(name: 'Actors') required String actors,
    @JsonKey(name: 'Plot') required String plot,
    @JsonKey(name: 'Language') required String language,
    @JsonKey(name: 'Poster') required String picture,
    @JsonKey(name: 'Ratings') required List<RatingDTO> ratings,
    @JsonKey(name: 'imdbRating') required String imdbRating,
    @JsonKey(name: 'Type') required String type,
    @JsonKey(name: 'Website', defaultValue: 'N/A') required String website,
  }) = _MediaInformationDetailDTO;

  factory MediaInformationDetailDTO.fromJson(Map<String, dynamic> json) =>
      _$MediaInformationDetailDTOFromJson(json);
}

extension OnMediaInformationDetail on MediaInformationDetail {
  MediaInformationDetailDTO get toDTO {
    return MediaInformationDetailDTO(
      id: id,
      title: title,
      year: year,
      rated: rated,
      released: released,
      runtime: runtime,
      genre: genre,
      director: director,
      actors: actors,
      plot: plot,
      language: language,
      picture: picture,
      ratings: ratings.toDTO,
      imdbRating: imdbRating,
      type: type.toDTO,
      website: website,
    );
  }
}

extension OnMediaInformationDetailList on List<MediaInformationDetail> {
  List<MediaInformationDetailDTO> get toDTO {
    return map<MediaInformationDetailDTO>((MediaInformationDetail e) => e.toDTO)
        .toList();
  }
}

extension OnMediaInformationDetailDTO on MediaInformationDetailDTO {
  MediaInformationDetail get toEntity {
    return MediaInformationDetail(
      id: id,
      title: title,
      year: year,
      rated: rated,
      released: released,
      runtime: runtime,
      genre: genre,
      director: director,
      actors: actors,
      plot: plot,
      language: language,
      picture: picture,
      ratings: ratings.toEntity,
      imdbRating: imdbRating,
      type: type.toEntity,
      website: website,
    );
  }
}

extension OnMediaInformationDetailDTOList on List<MediaInformationDetailDTO> {
  List<MediaInformationDetail> get toEntity {
    if (isEmpty) return [];
    return map<MediaInformationDetail>(
      (MediaInformationDetailDTO e) => e.toEntity,
    ).toList();
  }
}
