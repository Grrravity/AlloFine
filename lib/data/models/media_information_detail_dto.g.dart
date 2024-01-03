// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_information_detail_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MediaInformationDetailDTOImpl _$$MediaInformationDetailDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$MediaInformationDetailDTOImpl(
      id: json['imdbID'] as String,
      title: json['Title'] as String,
      year: json['Year'] as String,
      rated: json['Rated'] as String,
      released: json['Released'] as String,
      runtime: json['Runtime'] as String,
      genre: json['Genre'] as String,
      director: json['Director'] as String,
      actors: json['Actors'] as String,
      plot: json['Plot'] as String,
      language: json['Language'] as String,
      picture: json['Poster'] as String,
      ratings: (json['Ratings'] as List<dynamic>)
          .map((e) => RatingDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      imdbRating: json['imdbRating'] as String,
      type: json['Type'] as String,
      website: json['Website'] as String? ?? 'N/A',
    );

Map<String, dynamic> _$$MediaInformationDetailDTOImplToJson(
        _$MediaInformationDetailDTOImpl instance) =>
    <String, dynamic>{
      'imdbID': instance.id,
      'Title': instance.title,
      'Year': instance.year,
      'Rated': instance.rated,
      'Released': instance.released,
      'Runtime': instance.runtime,
      'Genre': instance.genre,
      'Director': instance.director,
      'Actors': instance.actors,
      'Plot': instance.plot,
      'Language': instance.language,
      'Poster': instance.picture,
      'Ratings': instance.ratings.map((e) => e.toJson()).toList(),
      'imdbRating': instance.imdbRating,
      'Type': instance.type,
      'Website': instance.website,
    };
