part of 'best_seller_books_cubit.dart';

sealed class BestSellerBooksState {
  const BestSellerBooksState();
}

class BestSellerBooksInitial extends BestSellerBooksState {}

class BestSellerBooksLoading extends BestSellerBooksState {}

class BestSellerBooksFailure extends BestSellerBooksState {
  final String errMessage;
  const BestSellerBooksFailure(this.errMessage);
}

class BestSellerBooksSuccess extends BestSellerBooksState {
  final List<Book> books;
  const BestSellerBooksSuccess(this.books);
}
