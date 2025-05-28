import 'package:bookly/core/di/service_locator.dart';
import 'package:bookly/modules/home/cubit/featured_books_cubit.dart';
import 'package:bookly/modules/home/services/home_service.dart';
import 'package:bookly/modules/home/views/home_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create:
              (context) => FeaturedBooksCubit(
                getIt.get<HomeService>()..fetchFeaturedBooks(),
              ),
        ),
      ],
      child: SafeArea(child: Scaffold(body: HomeBody())),
    );
  }
}
