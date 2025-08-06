import 'package:freezed_annotation/freezed_annotation.dart';
import 'retail_price.dart'; // 👈 reference the separate file

part 'sale_info.freezed.dart';
part 'sale_info.g.dart';

@freezed
class SaleInfo with _$SaleInfo {
  const factory SaleInfo({String? saleability, RetailPrice? retailPrice}) =
      _SaleInfo;

  factory SaleInfo.fromJson(Map<String, dynamic> json) =>
      _$SaleInfoFromJson(json);
}
