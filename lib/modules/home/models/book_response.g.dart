// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BookResponse _$BookResponseFromJson(Map<String, dynamic> json) =>
    _BookResponse(
      kind: json['kind'] as String?,
      totalItems: (json['totalItems'] as num?)?.toInt(),
      items:
          (json['items'] as List<dynamic>?)
              ?.map((e) => Book.fromJson(e as Map<String, dynamic>))
              .toList(),
    );

Map<String, dynamic> _$BookResponseToJson(_BookResponse instance) =>
    <String, dynamic>{
      'kind': instance.kind,
      'totalItems': instance.totalItems,
      'items': instance.items,
    };
