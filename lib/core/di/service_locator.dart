import 'package:bookly/core/utils/api_service.dart';
import 'package:bookly/modules/book_details/bloc/cubit/similar_books_cubit.dart';
import 'package:bookly/modules/book_details/services/book_details_service.dart';
import 'package:bookly/modules/book_details/services/book_details_service_impl.dart';
import 'package:bookly/modules/home/bloc/featured_books/featured_books_cubit.dart';
import 'package:bookly/modules/home/services/home_service.dart';
import 'package:bookly/modules/home/services/home_service_impl.dart';
import 'package:bookly/modules/search/bloc/cubit/search_cubit.dart';
import 'package:bookly/modules/search/services/search_service.dart';
import 'package:bookly/modules/search/services/search_service_impl.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  // Core services
  getIt.registerSingleton<ApiService>(ApiService(Dio()));

  // Data services
  getIt.registerLazySingleton<HomeService>(
    () => HomeServiceImpl(getIt<ApiService>()),
  );
  getIt.registerLazySingleton<BookDetailsService>(
    () => BookDetailsServiceImpl(getIt<ApiService>()),
  );

  getIt.registerLazySingleton<SearchService>(
    () => SearchServiceImpl(getIt<ApiService>()),
  );

  // Feature cubits (factories: new instance each time)
  getIt.registerFactory<FeaturedBooksCubit>(() => FeaturedBooksCubit(getIt()));
  getIt.registerFactory<SimilarBooksCubit>(() => SimilarBooksCubit(getIt()));
  getIt.registerFactory<SearchCubit>(() => SearchCubit(getIt()));
}
