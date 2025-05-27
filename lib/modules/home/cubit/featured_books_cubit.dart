import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import 'package:bookly/modules/home/models/book/book.model.dart';
import 'package:bookly/modules/home/services/home_service.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.homeService) : super(FeaturedBooksInitial());

  final HomeService homeService;

  Future<void> fetchFeaturedBooks() async {
    emit(FeaturedBooksLoading());
    var result = await homeService.fetchFeaturedBooks();
    result.fold(
      (failure) {
        emit(FeaturedBooksFailure(failure.message));
      },
      (books) {
        emit(FeaturedBooksSuccess(books));
      },
    );
  }
}
