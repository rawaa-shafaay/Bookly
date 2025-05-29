import 'package:bookly/modules/home/models/retail_price.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sale_info.freezed.dart';
part 'sale_info.g.dart';

@freezed
abstract class SaleInfo with _$SaleInfo {
  const factory SaleInfo({
    String? country,
    String? saleability,
    bool? isEbook,
    RetailPrice? retailPrice,
  }) = _SaleInfo;

  factory SaleInfo.fromJson(Map<String, dynamic> json) =>
      _$SaleInfoFromJson(json);
}
