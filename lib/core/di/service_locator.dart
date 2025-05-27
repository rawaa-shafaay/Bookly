import 'package:bookly/core/utils/api_service.dart';
import 'package:bookly/modules/home/services/home_service.dart';
import 'package:bookly/modules/home/services/home_service_impl.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  getIt.registerLazySingleton<HomeService>(
    () => HomeServiceImpl(getIt<ApiService>()),
  );
}
