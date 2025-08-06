import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bookly/domain/repositories/book_repository.dart';
import 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  final BookRepository repository;

  SearchCubit(this.repository) : super(const SearchState.initial());

  Future<void> searchBooks(String query) async {
    emit(const SearchState.loading());

    final result = await repository.searchBooks(query);

    result.fold(
      (failure) => emit(SearchState.failure(failure.message)),
      (books) => emit(SearchState.success(books)),
    );
  }

  void clear() {
    emit(const SearchState.initial());
  }
}
