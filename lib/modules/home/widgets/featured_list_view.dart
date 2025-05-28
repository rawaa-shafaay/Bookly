import 'package:bookly/core/widgets/error_message.dart';
import 'package:bookly/modules/home/cubit/featured_books_cubit.dart';
import 'package:bookly/modules/home/widgets/book_cover_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .26,
      child: BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
        builder: (context, state) {
          if (state is FeaturedBooksLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is FeaturedBooksFailure) {
            return ErrorMessage(message: state.errMessage);
          } else if (state is FeaturedBooksSuccess) {
            final books = state.books;

            return ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: books.length,
              itemBuilder: (context, index) {
                final book = books[index];
                final thumbnailUrl =
                    book.volumeInfo?.imageLinks?.thumbnail ?? '';

                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 6),

                  child: BookCoverImage(imageUrl: thumbnailUrl),
                );
              },
            );
          }
          return const SizedBox();
        },
      ),
    );
  }
}
