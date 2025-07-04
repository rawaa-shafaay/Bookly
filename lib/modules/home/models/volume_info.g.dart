// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'volume_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_VolumeInfo _$VolumeInfoFromJson(Map<String, dynamic> json) => _VolumeInfo(
  title: json['title'] as String?,
  subtitle: json['subtitle'] as String?,
  authors:
      (json['authors'] as List<dynamic>?)?.map((e) => e as String).toList(),
  publisher: json['publisher'] as String?,
  publishedDate: json['publishedDate'] as String?,
  description: json['description'] as String?,
  industryIdentifiers:
      (json['industryIdentifiers'] as List<dynamic>?)
          ?.map((e) => IndustryIdentifier.fromJson(e as Map<String, dynamic>))
          .toList(),
  readingModes:
      json['readingModes'] == null
          ? null
          : ReadingModes.fromJson(json['readingModes'] as Map<String, dynamic>),
  pageCount: (json['pageCount'] as num?)?.toInt(),
  printType: json['printType'] as String?,
  categories:
      (json['categories'] as List<dynamic>?)?.map((e) => e as String).toList(),
  maturityRating: json['maturityRating'] as String?,
  allowAnonLogging: json['allowAnonLogging'] as bool?,
  contentVersion: json['contentVersion'] as String?,
  panelizationSummary:
      json['panelizationSummary'] == null
          ? null
          : PanelizationSummary.fromJson(
            json['panelizationSummary'] as Map<String, dynamic>,
          ),
  imageLinks:
      json['imageLinks'] == null
          ? null
          : ImageLinks.fromJson(json['imageLinks'] as Map<String, dynamic>),
  language: json['language'] as String?,
  previewLink: json['previewLink'] as String?,
  infoLink: json['infoLink'] as String?,
  canonicalVolumeLink: json['canonicalVolumeLink'] as String?,
  averageRating: (json['averageRating'] as num?)?.toDouble(),
  ratingsCount: (json['ratingsCount'] as num?)?.toInt(),
);

Map<String, dynamic> _$VolumeInfoToJson(_VolumeInfo instance) =>
    <String, dynamic>{
      'title': instance.title,
      'subtitle': instance.subtitle,
      'authors': instance.authors,
      'publisher': instance.publisher,
      'publishedDate': instance.publishedDate,
      'description': instance.description,
      'industryIdentifiers': instance.industryIdentifiers,
      'readingModes': instance.readingModes,
      'pageCount': instance.pageCount,
      'printType': instance.printType,
      'categories': instance.categories,
      'maturityRating': instance.maturityRating,
      'allowAnonLogging': instance.allowAnonLogging,
      'contentVersion': instance.contentVersion,
      'panelizationSummary': instance.panelizationSummary,
      'imageLinks': instance.imageLinks,
      'language': instance.language,
      'previewLink': instance.previewLink,
      'infoLink': instance.infoLink,
      'canonicalVolumeLink': instance.canonicalVolumeLink,
      'averageRating': instance.averageRating,
      'ratingsCount': instance.ratingsCount,
    };
