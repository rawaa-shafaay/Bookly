// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'retail_price.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RetailPrice _$RetailPriceFromJson(Map<String, dynamic> json) => _RetailPrice(
  amount: (json['amount'] as num?)?.toDouble(),
  currencyCode: json['currencyCode'] as String?,
);

Map<String, dynamic> _$RetailPriceToJson(_RetailPrice instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'currencyCode': instance.currencyCode,
    };
