import 'package:bookly/core/widgets/error_message.dart';
import 'package:bookly/modules/book_details/bloc/cubit/similar_books_cubit.dart';
import 'package:bookly/modules/home/widgets/book_cover_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksStateLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is SimilarBooksStateFailure) {
          return ErrorMessage(message: state.errMessage);
        }
        if (state is SimilarBooksStateSuccess) {
          final books = state.books;
          return SizedBox(
            height: 130,
            child: ListView.builder(
              itemCount: books.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                final book = books[index];

                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 6),
                  child: BookCoverImage(
                    imageUrl: book.volumeInfo?.imageLinks?.thumbnail ?? '',
                  ),
                );
              },
            ),
          );
        }
        return const SizedBox();
      },
    );
  }
}
