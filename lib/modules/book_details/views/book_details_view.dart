import 'package:bookly/core/di/service_locator.dart';
import 'package:bookly/modules/book_details/bloc/cubit/similar_books_cubit.dart';
import 'package:bookly/modules/book_details/services/book_details_service.dart';
import 'package:bookly/modules/book_details/views/book_details_body.dart';
import 'package:bookly/modules/home/models/book.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key, required this.bookModel});

  final Book bookModel;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create:
              (_) => SimilarBooksCubit(getIt.get<BookDetailsService>())
                ..fetchSimilarBooks(
                  bookModel.volumeInfo?.categories?.first ?? '',
                ),
        ),
      ],

      child: SafeArea(
        child: Scaffold(body: BookDetailsBody(bookModel: bookModel)),
      ),
    );
  }
}
