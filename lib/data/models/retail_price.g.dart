// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'retail_price.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RetailPriceImpl _$$RetailPriceImplFromJson(Map<String, dynamic> json) =>
    _$RetailPriceImpl(
      amount: (json['amount'] as num?)?.toDouble(),
      currencyCode: json['currencyCode'] as String?,
    );

Map<String, dynamic> _$$RetailPriceImplToJson(_$RetailPriceImpl instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'currencyCode': instance.currencyCode,
    };
