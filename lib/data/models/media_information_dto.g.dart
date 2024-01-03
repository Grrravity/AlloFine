// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_information_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MediaInformationDTOImpl _$$MediaInformationDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$MediaInformationDTOImpl(
      id: json['imdbID'] as String,
      title: json['Title'] as String,
      year: json['Year'] as String,
      type: json['Type'] as String,
      picture: json['Poster'] as String,
    );

Map<String, dynamic> _$$MediaInformationDTOImplToJson(
        _$MediaInformationDTOImpl instance) =>
    <String, dynamic>{
      'imdbID': instance.id,
      'Title': instance.title,
      'Year': instance.year,
      'Type': instance.type,
      'Poster': instance.picture,
    };
