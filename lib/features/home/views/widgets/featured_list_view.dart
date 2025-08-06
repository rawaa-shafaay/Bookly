import 'package:bookly/core/widgets/error_message.dart';
import 'package:bookly/features/home/view_model/featured_books_cubit.dart';
import 'package:bookly/features/home/view_model/featured_books_state.dart';
import 'package:bookly/features/home/views/widgets/book_cover_image.dart';
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
          return state.when(
            initial: () => const SizedBox(),
            loading: () => const Center(child: CircularProgressIndicator()),
            failure:
                (message) => ErrorMessage(
                  message: message,
                  onRetry:
                      () =>
                          context
                              .read<FeaturedBooksCubit>()
                              .fetchFeaturedBooks(),
                ),
            success:
                (books) => ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: books.length,
                  itemBuilder: (context, index) {
                    final book = books[index];

                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 6),
                      child: BookCoverImage(imageUrl: book.imageUrl),
                    );
                  },
                ),
          );
        },
      ),
    );
  }
}
