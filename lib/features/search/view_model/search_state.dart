import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bookly/domain/entities/book.dart';

part 'search_state.freezed.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState.initial() = SearchInitial;
  const factory SearchState.loading() = SearchLoading;
  const factory SearchState.success(List<Book> books) = SearchSuccess;
  const factory SearchState.failure(String message) = SearchFailure;
}
