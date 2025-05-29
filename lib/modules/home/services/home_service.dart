import 'package:bookly/core/errors/failures.dart';
import 'package:bookly/modules/home/models/book.dart';
import 'package:dartz/dartz.dart';

abstract class HomeService {
  Future<Either<Failure, List<Book>>> fetchBestSellerBooks();
  Future<Either<Failure, List<Book>>> fetchFeaturedBooks();
}
