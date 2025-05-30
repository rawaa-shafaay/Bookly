import 'package:bookly/core/di/service_locator.dart';
import 'package:bookly/modules/home/bloc/best%20seller%20books/best_seller_books_cubit.dart';
import 'package:bookly/modules/home/bloc/featured_books/featured_books_cubit.dart';
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
          create: (_) => getIt<FeaturedBooksCubit>()..fetchFeaturedBooks(),
        ),
        BlocProvider(
          create: (_) => getIt<BestSellerBooksCubit>()..fetchBestSellerBooks(),
        ),
      ],
      child: SafeArea(child: Scaffold(body: HomeBody())),
    );
  }
}
