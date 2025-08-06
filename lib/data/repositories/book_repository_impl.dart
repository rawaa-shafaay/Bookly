import 'package:bookly/core/errors/failures.dart';
import 'package:bookly/core/services/api_service.dart';
import 'package:bookly/data/data_source/local/book_cache_data_source.dart';
import 'package:bookly/data/models/book_response.dart';
import 'package:bookly/domain/entities/book.dart';
import 'package:bookly/domain/repositories/book_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class BookRepositoryImpl implements BookRepository {
  final ApiService apiService;
  final BookCacheDataSource cache;

  BookRepositoryImpl(this.apiService, this.cache);

  @override
  Future<Either<Failure, List<Book>>> getFeaturedBooks() async {
    const String category = 'featured';
    try {
      final data = await apiService.get(endPoint: 'volumes?q=computer science');
      final models = BookResponse.fromJson(data).items ?? [];
      final books = models.map((e) => e.toDomain()).toList();

      await cache.clearBooks(category);
      for (final book in models) {
        await cache.insertBook(book, category);
      }

      return Right(books);
    } on DioException catch (e) {
      final cached = await cache.getCachedBooks(category);
      if (cached.isNotEmpty) {
        return Right(cached.map((e) => e.toDomain()).toList());
      }
      return Left(ServerFailure.fromDioException(e));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<Book>>> getNewestBooks() async {
    const String category = 'newest';
    try {
      final data = await apiService.get(
        endPoint: 'volumes?q=programming&orderBy=newest',
      );
      final models = BookResponse.fromJson(data).items ?? [];
      final books = models.map((e) => e.toDomain()).toList();

      await cache.clearBooks(category);
      for (final book in models) {
        await cache.insertBook(book, category);
      }

      return Right(books);
    } on DioException catch (e) {
      final cached = await cache.getCachedBooks(category);
      if (cached.isNotEmpty) {
        return Right(cached.map((e) => e.toDomain()).toList());
      }
      return Left(ServerFailure.fromDioException(e));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<Book>>> getSimilarBooks(String category) async {
    try {
      final data = await apiService.get(
        endPoint: 'volumes?q=subject:$category',
      );
      final models = BookResponse.fromJson(data).items ?? [];
      final books = models.map((e) => e.toDomain()).toList();

      await cache.clearBooks(category);
      for (final book in models) {
        await cache.insertBook(book, category);
      }

      return Right(books);
    } on DioException catch (e) {
      final cached = await cache.getCachedBooks(category);
      if (cached.isNotEmpty) {
        return Right(cached.map((e) => e.toDomain()).toList());
      }

      return Left(ServerFailure.fromDioException(e));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<Book>>> searchBooks(String query) async {
    try {
      final data = await apiService.get(endPoint: 'volumes?q=$query');
      final models = BookResponse.fromJson(data).items ?? [];
      final books = models.map((e) => e.toDomain()).toList();
      return Right(books);
    } on DioException catch (e) {
      return Left(ServerFailure.fromDioException(e));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
