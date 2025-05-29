import 'package:bookly/core/errors/failures.dart';
import 'package:bookly/modules/home/models/book.dart';
import 'package:dartz/dartz.dart';

abstract class SearchService {
  Future<Either<Failure, List<Book>>> search(String query);
}
