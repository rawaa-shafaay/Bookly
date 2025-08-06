// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'volume_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VolumeInfoImpl _$$VolumeInfoImplFromJson(Map<String, dynamic> json) =>
    _$VolumeInfoImpl(
      title: json['title'] as String?,
      authors:
          (json['authors'] as List<dynamic>?)?.map((e) => e as String).toList(),
      description: json['description'] as String?,
      averageRating: (json['averageRating'] as num?)?.toDouble(),
      ratingsCount: (json['ratingsCount'] as num?)?.toInt(),
      imageLinks:
          json['imageLinks'] == null
              ? null
              : ImageLinks.fromJson(json['imageLinks'] as Map<String, dynamic>),
      previewLink: json['previewLink'] as String?,
      categories:
          (json['categories'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
    );

Map<String, dynamic> _$$VolumeInfoImplToJson(_$VolumeInfoImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'authors': instance.authors,
      'description': instance.description,
      'averageRating': instance.averageRating,
      'ratingsCount': instance.ratingsCount,
      'imageLinks': instance.imageLinks,
      'previewLink': instance.previewLink,
      'categories': instance.categories,
    };
