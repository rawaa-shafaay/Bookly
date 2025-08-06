// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sale_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SaleInfoImpl _$$SaleInfoImplFromJson(Map<String, dynamic> json) =>
    _$SaleInfoImpl(
      saleability: json['saleability'] as String?,
      retailPrice:
          json['retailPrice'] == null
              ? null
              : RetailPrice.fromJson(
                json['retailPrice'] as Map<String, dynamic>,
              ),
    );

Map<String, dynamic> _$$SaleInfoImplToJson(_$SaleInfoImpl instance) =>
    <String, dynamic>{
      'saleability': instance.saleability,
      'retailPrice': instance.retailPrice,
    };
