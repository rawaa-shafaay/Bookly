// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sale_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SaleInfo _$SaleInfoFromJson(Map<String, dynamic> json) => _SaleInfo(
  country: json['country'] as String?,
  saleability: json['saleability'] as String?,
  isEbook: json['isEbook'] as bool?,
  retailPrice:
      json['retailPrice'] == null
          ? null
          : RetailPrice.fromJson(json['retailPrice'] as Map<String, dynamic>),
);

Map<String, dynamic> _$SaleInfoToJson(_SaleInfo instance) => <String, dynamic>{
  'country': instance.country,
  'saleability': instance.saleability,
  'isEbook': instance.isEbook,
  'retailPrice': instance.retailPrice,
};
