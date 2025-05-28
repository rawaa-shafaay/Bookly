// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'access_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AccessInfo _$AccessInfoFromJson(Map<String, dynamic> json) => _AccessInfo(
  country: json['country'] as String?,
  viewability: json['viewability'] as String?,
  embeddable: json['embeddable'] as bool?,
  publicDomain: json['publicDomain'] as bool?,
  textToSpeechPermission: json['textToSpeechPermission'] as String?,
  pdf:
      json['pdf'] == null
          ? null
          : Pdf.fromJson(json['pdf'] as Map<String, dynamic>),
  epub:
      json['epub'] == null
          ? null
          : Epub.fromJson(json['epub'] as Map<String, dynamic>),
  webReaderLink: json['webReaderLink'] as String?,
  accessViewStatus: json['accessViewStatus'] as String?,
  quoteSharingAllowed: json['quoteSharingAllowed'] as bool?,
);

Map<String, dynamic> _$AccessInfoToJson(_AccessInfo instance) =>
    <String, dynamic>{
      'country': instance.country,
      'viewability': instance.viewability,
      'embeddable': instance.embeddable,
      'publicDomain': instance.publicDomain,
      'textToSpeechPermission': instance.textToSpeechPermission,
      'pdf': instance.pdf,
      'epub': instance.epub,
      'webReaderLink': instance.webReaderLink,
      'accessViewStatus': instance.accessViewStatus,
      'quoteSharingAllowed': instance.quoteSharingAllowed,
    };
