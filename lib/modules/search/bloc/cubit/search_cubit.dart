import 'package:bloc/bloc.dart';
import 'package:bookly/modules/home/models/book.dart';
import 'package:bookly/modules/search/services/search_service.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit(this.searchService) : super(SearchInitial());

  final SearchService searchService;

  Future<void> search(String query) async {
    emit(SearchLoading());
    final result = await searchService.search(query);
    result.fold(
      (failure) => emit(SearchFailure(failure.message)),
      (books) => emit(SearchSuccess(books)),
    );
  }
}
