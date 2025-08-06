import 'package:bookly/core/constants/app_constants.dart';
import 'package:bookly/core/theme/app_text_styles.dart';
import 'package:bookly/domain/entities/book.dart';
import 'package:bookly/features/book_details/views/book_details_screen.dart';
import 'package:bookly/features/home/views/widgets/book_cover_image.dart';
import 'package:bookly/features/home/views/widgets/book_rating.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key, required this.book});

  final Book book;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _navigateToDetails(context),
      child: SizedBox(
        height: 125,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BookCoverImage(imageUrl: book.imageUrl),
            const SizedBox(width: 30),
            Expanded(child: _buildBookInfo(context)),
          ],
        ),
      ),
    );
  }

  Widget _buildBookInfo(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * .5,
          child: Text(
            book.title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: AppTextStyles.textStyle20.copyWith(
              fontFamily: AppConstants.kGTSectraFine,
            ),
          ),
        ),
        const SizedBox(height: 3),
        Text(
          book.author,
          style: AppTextStyles.textStyle14,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(height: 3),
        Row(
          children: [
            Text(
              book.priceText ?? 'Free',
              style: AppTextStyles.textStyle20.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const Spacer(),
            BookRating(rating: book.rating, count: book.ratingCount),
          ],
        ),
      ],
    );
  }

  void _navigateToDetails(BuildContext context) {
    Navigator.push(
      context,
      PageTransition(
        type: PageTransitionType.fade,
        child: BookDetailsScreen(book: book),
      ),
    );
  }
}
