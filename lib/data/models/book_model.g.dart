// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookModelImpl _$$BookModelImplFromJson(Map<String, dynamic> json) =>
    _$BookModelImpl(
      id: json['id'] as String,
      volumeInfo: VolumeInfo.fromJson(
        json['volumeInfo'] as Map<String, dynamic>,
      ),
      saleInfo:
          json['saleInfo'] == null
              ? null
              : SaleInfo.fromJson(json['saleInfo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BookModelImplToJson(_$BookModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'volumeInfo': instance.volumeInfo,
      'saleInfo': instance.saleInfo,
    };
