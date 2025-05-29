import 'package:bloc/bloc.dart';
import 'package:bookly/modules/home/models/book.dart';
import 'package:bookly/modules/home/services/home_service.dart';

part 'similar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit(this.homeService) : super(SimilarBooksStateInitial());

  final HomeService homeService;

  Future<void> fetchSimilarBooks() async {
    emit(SimilarBooksStateLoading());
    var result = await homeService.fetchFeaturedBooks();
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
