import 'package:bookly/core/di/service_locator.dart';
import 'package:bookly/modules/book_details/bloc/cubit/similar_books_cubit.dart';
import 'package:bookly/modules/book_details/views/book_details_body.dart';
import 'package:bookly/modules/home/bloc/best%20seller%20books/best_seller_books_cubit.dart';
import 'package:bookly/modules/home/services/home_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => SimilarBooksCubit(getIt.get<HomeService>()),
        ),
      ],

      child: SafeArea(child: Scaffold(body: BookDetailsBody())),
    );
  }
}
