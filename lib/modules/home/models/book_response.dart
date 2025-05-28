import 'package:freezed_annotation/freezed_annotation.dart';
import 'book.dart';

part 'book_response.freezed.dart';
part 'book_response.g.dart';

@freezed
abstract class BookResponse with _$BookResponse {
  const factory BookResponse({
    String? kind,
    int? totalItems,
    List<Book>? items,
  }) = _BookResponse;

  factory BookResponse.fromJson(Map<String, dynamic> json) =>
      _$BookResponseFromJson(json);
}
