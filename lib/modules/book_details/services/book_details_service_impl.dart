import 'package:bookly/core/errors/failures.dart';
import 'package:bookly/core/utils/api_service.dart';
import 'package:bookly/core/utils/book_database.dart';
import 'package:bookly/modules/book_details/services/book_details_service.dart';
import 'package:bookly/modules/home/models/book.dart';
import 'package:bookly/modules/home/models/book_response.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class BookDetailsServiceImpl implements BookDetailsService {
  final ApiService apiService;
  final BookDatabase _db = BookDatabase();

  BookDetailsServiceImpl(this.apiService);
  @override
  Future<Either<Failure, List<Book>>> fetchSimilarBooks(String bookId) async {
    final category = 'similar_$bookId';

    try {
      final data = await apiService.get(
        endPoint: 'volumes?q=related:$bookId', // change this if needed
      );

      final books = BookResponse.fromJson(data).items ?? [];

      await _db.clearBooks(category); // optional
      for (final book in books) {
        await _db.insertBook(book, category);
      }

      return Right(books);
    } on DioException catch (e) {
      final cached = await _db.getCachedBooks(category);
      if (cached.isNotEmpty) return Right(cached);
      return Left(ServerFailure.fromDioException(e));
    } catch (e) {
      return Left(ServerFailure("Unexpected error: ${e.toString()}"));
    }
  }
}
