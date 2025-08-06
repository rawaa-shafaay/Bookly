import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bookly/domain/entities/book.dart';

part 'best_seller_books_state.freezed.dart';

@freezed
class BestSellerBooksState with _$BestSellerBooksState {
  const factory BestSellerBooksState.initial() = BestSellerInitial;
  const factory BestSellerBooksState.loading() = BestSellerLoading;
  const factory BestSellerBooksState.success(List<Book> books) =
      BestSellerSuccess;
  const factory BestSellerBooksState.failure(String message) =
      BestSellerFailure;
}
