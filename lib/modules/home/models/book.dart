// 📁 book.dart
import 'package:bookly/modules/home/models/search_info.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'volume_info.dart';
import 'sale_info.dart';
import 'access_info.dart';

part 'book.freezed.dart';
part 'book.g.dart';

@freezed
abstract class Book with _$Book {
  const factory Book({
    String? kind,
    String? id,
    String? etag,
    String? selfLink,
    VolumeInfo? volumeInfo,
    SaleInfo? saleInfo,
    AccessInfo? accessInfo,
    SearchInfo? searchInfo,
  }) = _Book;

  factory Book.fromJson(Map<String, dynamic> json) => _$BookFromJson(json);
}
