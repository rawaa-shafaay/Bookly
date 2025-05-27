import 'package:bookly/core/errors/failures.dart';
import 'package:bookly/modules/home/models/book/book.model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeService {
  Future<Either<Failure, List<Book>>> fetchNewestBooks();
  Future<Either<Failure, List<Book>>> fetchFeaturedBooks();
}
