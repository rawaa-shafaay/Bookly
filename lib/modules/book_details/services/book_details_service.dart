import 'package:bookly/core/errors/failures.dart';
import 'package:bookly/modules/home/models/book.dart';
import 'package:dartz/dartz.dart';

abstract class BookDetailsService {
  Future<Either<Failure, List<Book>>> fetchSimilarBooks(String bookId);
}
