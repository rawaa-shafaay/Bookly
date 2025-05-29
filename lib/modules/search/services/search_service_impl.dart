import 'package:bookly/core/errors/failures.dart';
import 'package:bookly/core/utils/api_service.dart';
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
    try {
      final data = await apiService.get(endPoint: 'volumes?q=$query');
      final response = BookResponse.fromJson(data);
      return Right(response.items ?? []);
    } on DioException catch (e) {
      return Left(ServerFailure.fromDioException(e));
    } catch (e) {
      return Left(ServerFailure("Unexpected error: ${e.toString()}"));
    }
  }
}
