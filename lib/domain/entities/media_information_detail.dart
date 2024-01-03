import 'package:allofine/domain/entities/media_type.dart';
import 'package:allofine/domain/entities/rating.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'media_information_detail.freezed.dart';

@freezed
class MediaInformationDetail with _$MediaInformationDetail {
  const factory MediaInformationDetail({
    required String id,
    required String title,
    required String year,
    required String rated,
    required String released,
    required String runtime,
    required String genre,
    required String director,
    required String actors,
    required String plot,
    required String language,
    required String picture,
    required List<Rating> ratings,
    required String imdbRating,
    required MediaType type,
    required String website,
  }) = _MediaInformationDetail;

  const MediaInformationDetail._();
}

extension XMediaInformationDetail on MediaInformationDetail {
  String? get pictureUrl => picture == 'N/A' ? null : picture;
  String? get webUrl => website == 'N/A' ? null : website;
}
