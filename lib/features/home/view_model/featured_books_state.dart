import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bookly/domain/entities/book.dart';

part 'featured_books_state.freezed.dart';

@freezed
class FeaturedBooksState with _$FeaturedBooksState {
  const factory FeaturedBooksState.initial() = FeaturedInitial;
  const factory FeaturedBooksState.loading() = FeaturedLoading;
  const factory FeaturedBooksState.success(List<Book> books) = FeaturedSuccess;
  const factory FeaturedBooksState.failure(String message) = FeaturedFailure;
}
