part of 'similar_books_cubit.dart';

sealed class SimilarBooksState {
  const SimilarBooksState();
}

class SimilarBooksStateInitial extends SimilarBooksState {}

class SimilarBooksStateLoading extends SimilarBooksState {}

class SimilarBooksStateFailure extends SimilarBooksState {
  final String errMessage;
  const SimilarBooksStateFailure(this.errMessage);
}

class SimilarBooksStateSuccess extends SimilarBooksState {
  final List<Book> books;
  const SimilarBooksStateSuccess(this.books);
}
