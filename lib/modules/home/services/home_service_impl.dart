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

  @override
  Future<Either<Failure, List<Book>>> fetchNewestBooks() async {
    try {
      final data = await apiService.get(endPoint: 'volumes?q=*&orderBy=newest');
      final response = BookResponse.fromJson(data);

      return Right(response.items ?? []);
    } on DioException catch (e) {
      return Left(ServerFailure.fromDioException(e));
    } catch (e) {
      return Left(ServerFailure("Unexpected error: ${e.toString()}"));
    }
  }

  @override
  Future<Either<Failure, List<Book>>> fetchFeaturedBooks() async {
    try {
      final data = await apiService.get(endPoint: 'volumes?q=*');
      final response = BookResponse.fromJson(data);
      return Right(response.items ?? []);
    } on DioException catch (e) {
      return Left(ServerFailure.fromDioException(e));
    } catch (e) {
      return Left(ServerFailure("Unexpected error: ${e.toString()}"));
    }
  }
}
