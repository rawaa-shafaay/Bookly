import 'package:bloc/bloc.dart';
import 'package:bookly/modules/home/models/book.dart';
import 'package:bookly/modules/home/services/home_service.dart';

part 'best_seller_books_state.dart';

class BestSellerBooksCubit extends Cubit<BestSellerBooksState> {
  BestSellerBooksCubit(this.homeService) : super(BestSellerBooksInitial());

  final HomeService homeService;

  Future<void> fetchBestSellerBooks() async {
    emit(BestSellerBooksLoading());
    var result = await homeService.fetchFeaturedBooks();
    result.fold(
      (failure) {
        emit(BestSellerBooksFailure(failure.message));
      },
      (books) {
        emit(BestSellerBooksSuccess(books));
      },
    );
  }
}
