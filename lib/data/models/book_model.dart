import 'package:bookly/domain/entities/book.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'volume_info.dart';
import 'sale_info.dart';

part 'book_model.freezed.dart';
part 'book_model.g.dart';

@freezed
abstract class BookModel with _$BookModel {
  const BookModel._();

  const factory BookModel({
    required String id,
    required VolumeInfo volumeInfo,
    SaleInfo? saleInfo,
  }) = _BookModel;

  factory BookModel.fromJson(Map<String, dynamic> json) =>
      _$BookModelFromJson(json);

  Book toDomain() {
    final forSale = saleInfo?.saleability == 'FOR_SALE';
    final price =
        forSale && saleInfo?.retailPrice != null
            ? '${saleInfo!.retailPrice!.amount} ${saleInfo?.retailPrice!.currencyCode}'
            : 'Free';

    return Book(
      id: id,
      title: volumeInfo.title ?? '',
      author:
          (volumeInfo.authors?.isNotEmpty ?? false)
              ? volumeInfo.authors!.first
              : 'Unknown',
      imageUrl: volumeInfo.imageLinks?.thumbnail ?? '',
      rating: volumeInfo.averageRating ?? 0.0,
      ratingCount: volumeInfo.ratingsCount ?? 0,
      description: volumeInfo.description,
      previewLink: volumeInfo.previewLink,
      priceText: price,
      isForSale: forSale,
      category: volumeInfo.categories?.first,
    );
  }
}
