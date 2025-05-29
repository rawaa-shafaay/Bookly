import 'package:freezed_annotation/freezed_annotation.dart';

part 'retail_price.freezed.dart';
part 'retail_price.g.dart';

@freezed
abstract class RetailPrice with _$RetailPrice {
  const factory RetailPrice({double? amount, String? currencyCode}) =
      _RetailPrice;

  factory RetailPrice.fromJson(Map<String, dynamic> json) =>
      _$RetailPriceFromJson(json);
}
