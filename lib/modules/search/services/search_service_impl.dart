import 'package:bookly/core/errors/failures.dart';
import 'package:bookly/core/utils/api_service.dart';
import 'package:bookly/core/utils/book_database.dart';
import 'package:bookly/modules/home/models/book.dart';
import 'package:bookly/modules/home/models/book_response.dart';
import 'package:bookly/modules/search/services/search_service.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class SearchServiceImpl implements SearchService {
  final ApiService apiService;

  SearchServiceImpl(this.apiService);

  @override
  Future<Either<Failure, List<Book>>> search(String query) async {
    final db = BookDatabase();
    final category = 'search_${query.trim().toLowerCase()}';

    try {
      final data = await apiService.get(endPoint: 'volumes?q=$query');
      final response = BookResponse.fromJson(data);
      final books = response.items ?? [];

      await db.clearBooks(category);
      for (final book in books) {
        await db.insertBook(book, category);
      }

      return Right(books);
    } on DioException catch (e) {
      final cached = await db.getCachedBooks(category);
      if (cached.isNotEmpty) return Right(cached);
      return Left(ServerFailure.fromDioException(e));
    } catch (e) {
      return Left(ServerFailure("Unexpected error: ${e.toString()}"));
    }
  }
}
