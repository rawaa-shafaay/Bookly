import 'package:bookly/core/utils/book_database.dart';
import 'package:bookly/modules/home/models/book.dart';
import 'package:bookly/modules/home/models/book_response.dart';
import 'package:dartz/dartz.dart';
import 'package:bookly/core/errors/failures.dart';
import 'package:bookly/core/utils/api_service.dart';
import 'package:bookly/modules/home/services/home_service.dart';
import 'package:dio/dio.dart';

class HomeServiceImpl implements HomeService {
  final ApiService apiService;

  HomeServiceImpl(this.apiService);

  final BookDatabase _db = BookDatabase();

  @override
  Future<Either<Failure, List<Book>>> fetchBestSellerBooks() async {
    const category = 'best_seller';

    try {
      final data = await apiService.get(
        endPoint: 'volumes?q=subject:best%20seller&orderBy=newest',
      );
      final response = BookResponse.fromJson(data);
      final books = response.items ?? [];

      await _db.clearBooks(category); // optional: clear old cache
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

  @override
  Future<Either<Failure, List<Book>>> fetchFeaturedBooks() async {
    const category = 'featured';

    try {
      final data = await apiService.get(
        endPoint: 'volumes?q=mobile+development&orderBy=relevance',
      );
      final response = BookResponse.fromJson(data);
      final books = response.items ?? [];

      await _db.clearBooks(category);
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
