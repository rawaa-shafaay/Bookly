part of 'search_cubit.dart';

sealed class SearchState {
  const SearchState();
}

class SearchInitial extends SearchState {}

class SearchLoading extends SearchState {}

class SearchFailure extends SearchState {
  final String errMessage;
  const SearchFailure(this.errMessage);
}

class SearchSuccess extends SearchState {
  final List<Book> books;
  const SearchSuccess(this.books);
}
