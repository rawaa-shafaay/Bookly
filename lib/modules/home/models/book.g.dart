// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Book _$BookFromJson(Map<String, dynamic> json) => _Book(
  kind: json['kind'] as String?,
  id: json['id'] as String?,
  etag: json['etag'] as String?,
  selfLink: json['selfLink'] as String?,
  volumeInfo:
      json['volumeInfo'] == null
          ? null
          : VolumeInfo.fromJson(json['volumeInfo'] as Map<String, dynamic>),
  saleInfo:
      json['saleInfo'] == null
          ? null
          : SaleInfo.fromJson(json['saleInfo'] as Map<String, dynamic>),
  accessInfo:
      json['accessInfo'] == null
          ? null
          : AccessInfo.fromJson(json['accessInfo'] as Map<String, dynamic>),
  searchInfo:
      json['searchInfo'] == null
          ? null
          : SearchInfo.fromJson(json['searchInfo'] as Map<String, dynamic>),
);

Map<String, dynamic> _$BookToJson(_Book instance) => <String, dynamic>{
  'kind': instance.kind,
  'id': instance.id,
  'etag': instance.etag,
  'selfLink': instance.selfLink,
  'volumeInfo': instance.volumeInfo,
  'saleInfo': instance.saleInfo,
  'accessInfo': instance.accessInfo,
  'searchInfo': instance.searchInfo,
};
