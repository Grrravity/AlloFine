import 'package:allofine/domain/entities/rating.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'rating_dto.freezed.dart';
part 'rating_dto.g.dart';

@freezed
class RatingDTO with _$RatingDTO {
  const factory RatingDTO({
    @JsonKey(name: 'Source') required String source,
    @JsonKey(name: 'Value') required String value,
  }) = _RatingDTO;

  factory RatingDTO.fromJson(Map<String, dynamic> json) =>
      _$RatingDTOFromJson(json);
}

extension OnRating on Rating {
  RatingDTO get toDTO {
    return RatingDTO(
      source: source,
      value: value,
    );
  }
}

extension OnRatingList on List<Rating> {
  List<RatingDTO> get toDTO {
    return map<RatingDTO>((Rating e) => e.toDTO).toList();
  }
}

extension OnRatingDTO on RatingDTO {
  Rating get toEntity {
    return Rating(
      source: source,
      value: value,
    );
  }
}

extension OnRatingDTOList on List<RatingDTO> {
  List<Rating> get toEntity {
    if (isEmpty) return [];
    return map<Rating>((RatingDTO e) => e.toEntity).toList();
  }
}
