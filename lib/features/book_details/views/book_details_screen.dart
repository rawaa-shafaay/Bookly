import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bookly/core/di/service_locator.dart';
import 'package:bookly/domain/entities/book.dart';
import 'package:bookly/features/book_details/view_model/similar_books_cubit.dart';
import 'package:bookly/features/book_details/views/widgets/book_action_buttons.dart';
import 'package:bookly/features/book_details/views/widgets/book_details_app_bar.dart';
import 'package:bookly/features/book_details/views/widgets/similar_books_section.dart';
import 'package:bookly/features/home/views/widgets/book_cover_image.dart';
import 'package:bookly/features/home/views/widgets/book_rating.dart';
import 'package:bookly/core/theme/app_text_styles.dart';

class BookDetailsScreen extends StatelessWidget {
  const BookDetailsScreen({super.key, required this.book});

  final Book book;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create:
          (_) =>
              getIt<SimilarBooksCubit>()
                ..fetchSimilarBooks(book.category ?? ''),
      child: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            child: Column(
              children: [
                const BookDetailsAppBar(),
                const SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 24),
                  child: Center(
                    child: SizedBox(
                      width: 190,
                      child: BookCoverImage(imageUrl: book.imageUrl),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  book.title,
                  textAlign: TextAlign.center,
                  style: AppTextStyles.textStyle30,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 6),
                Opacity(
                  opacity: 0.7,
                  child: Text(
                    book.author,
                    textAlign: TextAlign.center,
                    style: AppTextStyles.textStyle18,
                  ),
                ),
                const SizedBox(height: 8),
                BookRating(
                  mainAxisAlignment: MainAxisAlignment.center,
                  rating: book.rating,
                  count: book.ratingCount,
                ),
                const SizedBox(height: 24),
                BookActionButtons(
                  isForSale: book.isForSale ?? false,
                  priceText: book.priceText ?? 'Free',
                  previewLink: book.previewLink ?? '',
                ),
                const SizedBox(height: 40),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'You May Also Like',
                    style: AppTextStyles.textStyle14.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                const SimilarBooksSection(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
