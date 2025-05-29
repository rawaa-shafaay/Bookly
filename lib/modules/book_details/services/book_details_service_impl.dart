import 'package:bookly/core/errors/failures.dart';
import 'package:bookly/core/utils/api_service.dart';
import 'package:bookly/modules/book_details/services/book_details_service.dart';
import 'package:bookly/modules/home/models/book.dart';
import 'package:bookly/modules/home/models/book_response.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class BookDetailsServiceImpl implements BookDetailsService {
  final ApiService apiService;

  BookDetailsServiceImpl(this.apiService);
  @override
  Future<Either<Failure, List<Book>>> fetchSimilarBooks(String category) async {
    try {
      final data = await apiService.get(
        endPoint: 'volumes?q=subject:$category',
      );
      final response = BookResponse.fromJson(data);

      return Right(response.items ?? []);
    } on DioException catch (e) {
      return Left(ServerFailure.fromDioException(e));
    } catch (e) {
      return Left(ServerFailure("Unexpected error: ${e.toString()}"));
    }
  }
}
