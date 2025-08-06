import 'package:bookly/core/widgets/error_message.dart';
import 'package:bookly/features/book_details/view_model/similar_books_cubit.dart';
import 'package:bookly/features/book_details/view_model/similar_books_state.dart';
import 'package:bookly/features/home/views/widgets/book_cover_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        return state.when(
          initial: () => const SizedBox.shrink(),
          loading: () => const Center(child: CircularProgressIndicator()),
          failure:
              (msg) => ErrorMessage(
                message: msg,
                onRetry: () => context.read<SimilarBooksCubit>().retry(),
              ),
          success:
              (books) => SizedBox(
                height: 130,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  itemCount: books.length,
                  separatorBuilder: (_, __) => const SizedBox(width: 8),
                  itemBuilder: (context, index) {
                    final book = books[index];
                    return SizedBox(
                      width: 80,
                      height: 120,
                      child: BookCoverImage(imageUrl: book.imageUrl),
                    );
                  },
                ),
              ),
        );
      },
    );
  }
}
