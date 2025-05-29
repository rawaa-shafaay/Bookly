import 'package:bloc/bloc.dart';
import 'package:bookly/modules/book_details/services/book_details_service.dart';
import 'package:bookly/modules/home/models/book.dart';

part 'similar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit(this.bookDetailsService)
    : super(SimilarBooksStateInitial());

  final BookDetailsService bookDetailsService;

  Future<void> fetchSimilarBooks(String category) async {
    emit(SimilarBooksStateLoading());
    var result = await bookDetailsService.fetchSimilarBooks(category);
    result.fold(
      (failure) {
        emit(SimilarBooksStateFailure(failure.message));
      },
      (books) {
        emit(SimilarBooksStateSuccess(books));
      },
    );
  }
}
