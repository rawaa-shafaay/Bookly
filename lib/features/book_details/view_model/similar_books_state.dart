import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bookly/domain/entities/book.dart';

part 'similar_books_state.freezed.dart';

@freezed
class SimilarBooksState with _$SimilarBooksState {
  const factory SimilarBooksState.initial() = SimilarBooksInitial;
  const factory SimilarBooksState.loading() = SimilarBooksLoading;
  const factory SimilarBooksState.success(List<Book> books) =
      SimilarBooksSuccess;
  const factory SimilarBooksState.failure(String message) = SimilarBooksFailure;
}
