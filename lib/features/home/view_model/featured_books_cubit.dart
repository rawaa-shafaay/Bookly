import 'package:bookly/domain/repositories/book_repository.dart';
import 'package:bookly/features/home/view_model/featured_books_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  final BookRepository _repository;

  FeaturedBooksCubit(this._repository)
    : super(const FeaturedBooksState.initial());

  Future<void> fetchFeaturedBooks() async {
    emit(const FeaturedBooksState.loading());

    final result = await _repository.getFeaturedBooks();

    result.fold(
      (failure) => emit(FeaturedBooksState.failure(failure.message)),
      (books) => emit(FeaturedBooksState.success(books)),
    );
  }
}
