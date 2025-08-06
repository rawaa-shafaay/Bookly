import 'package:bookly/core/database/book_database_service.dart';
import 'package:bookly/data/data_source/local/book_cache_data_source.dart';
import 'package:bookly/data/repositories/book_repository_impl.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:bookly/core/services/api_service.dart';
import 'package:bookly/domain/repositories/book_repository.dart';
import 'package:bookly/features/home/view_model/featured_books_cubit.dart';
import 'package:bookly/features/home/view_model/best_seller_books_cubit.dart';
import 'package:bookly/features/book_details/view_model/similar_books_cubit.dart';
import 'package:bookly/features/search/view_model/search_cubit.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  // Core services
  getIt.registerLazySingleton<ApiService>(() => ApiService(Dio()));
  getIt.registerLazySingleton<BookDatabaseService>(() => BookDatabaseService());
  getIt.registerLazySingleton<BookCacheDataSource>(
    () => BookCacheDataSource(getIt<BookDatabaseService>()),
  );

  // Repository
  getIt.registerLazySingleton<BookRepository>(
    () => BookRepositoryImpl(getIt<ApiService>(), getIt<BookCacheDataSource>()),
  );

  // Cubits
  getIt.registerFactory(() => FeaturedBooksCubit(getIt<BookRepository>()));
  getIt.registerFactory(() => BestSellerBooksCubit(getIt<BookRepository>()));
  getIt.registerFactory(() => SearchCubit(getIt<BookRepository>()));
  getIt.registerFactory(() => SimilarBooksCubit(getIt<BookRepository>()));
}
