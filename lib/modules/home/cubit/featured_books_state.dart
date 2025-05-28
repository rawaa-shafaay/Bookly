part of 'featured_books_cubit.dart';

sealed class FeaturedBooksState {
  const FeaturedBooksState();
}

class FeaturedBooksInitial extends FeaturedBooksState {}

class FeaturedBooksLoading extends FeaturedBooksState {}

class FeaturedBooksFailure extends FeaturedBooksState {
  final String errMessage;
  const FeaturedBooksFailure(this.errMessage);
}

class FeaturedBooksSuccess extends FeaturedBooksState {
  final List<Book> books;
  const FeaturedBooksSuccess(this.books);
}
