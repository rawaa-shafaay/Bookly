import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bookly/domain/repositories/book_repository.dart';
import 'similar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit(this._repository)
    : super(const SimilarBooksState.initial());

  final BookRepository _repository;

  String? _lastCategory;

  void fetchSimilarBooks(String category) async {
    _lastCategory = category;
    emit(const SimilarBooksState.loading());

    final result = await _repository.getSimilarBooks(category);
    result.fold(
      (failure) => emit(SimilarBooksState.failure(failure.message)),
      (books) => emit(SimilarBooksState.success(books)),
    );
  }

  void retry() {
    if (_lastCategory != null) {
      fetchSimilarBooks(_lastCategory!);
    }
  }
}
