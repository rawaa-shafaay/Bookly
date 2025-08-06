import 'package:bookly/domain/entities/book.dart';
import 'package:dartz/dartz.dart';
import 'package:bookly/core/errors/failures.dart';

abstract class BookRepository {
  Future<Either<Failure, List<Book>>> getFeaturedBooks();
  Future<Either<Failure, List<Book>>> getNewestBooks();
  Future<Either<Failure, List<Book>>> getSimilarBooks(String bookId);
  Future<Either<Failure, List<Book>>> searchBooks(String query);
}
