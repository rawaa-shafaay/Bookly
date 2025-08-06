import 'package:bookly/domain/repositories/book_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'best_seller_books_state.dart';

class BestSellerBooksCubit extends Cubit<BestSellerBooksState> {
  final BookRepository _repository;

  BestSellerBooksCubit(this._repository)
    : super(const BestSellerBooksState.initial());

  Future<void> fetchBestSellerBooks() async {
    emit(const BestSellerBooksState.loading());

    final result = await _repository.getNewestBooks();

    result.fold(
      (failure) => emit(BestSellerBooksState.failure(failure.message)),
      (books) => emit(BestSellerBooksState.success(books)),
    );
  }
}
