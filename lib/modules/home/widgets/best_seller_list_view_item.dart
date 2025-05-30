import 'package:bookly/core/constants/app_constants.dart';
import 'package:bookly/core/theme/app_text_styles.dart';
import 'package:bookly/modules/book_details/views/book_details_view.dart';
import 'package:bookly/modules/home/models/book.dart';
import 'package:bookly/modules/home/widgets/book_cover_image.dart';
import 'package:bookly/modules/home/widgets/book_rating.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key, required this.bookModel});

  final Book bookModel;

  @override
  Widget build(BuildContext context) {
    final volumeInfo = bookModel.volumeInfo;
    final saleInfo = bookModel.saleInfo;

    // 🧠 Determine price text based on saleability
    final priceText =
        (saleInfo?.saleability == 'FOR_SALE' &&
                saleInfo?.retailPrice?.amount != null)
            ? '${saleInfo!.retailPrice!.amount} ${saleInfo.retailPrice!.currencyCode}'
            : 'Free';

    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          PageTransition(
            type: PageTransitionType.fade,
            child: BookDetailsView(bookModel: bookModel),
          ),
        );
      },
      child: SizedBox(
        height: 125,
        child: Row(
          children: [
            BookCoverImage(imageUrl: volumeInfo?.imageLinks?.thumbnail ?? ''),
            const SizedBox(width: 30),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .5,
                    child: Text(
                      bookModel.volumeInfo?.title ?? '',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: AppTextStyles.textStyle20.copyWith(
                        fontFamily: AppConstants.kGTSectraFine,
                      ),
                    ),
                  ),
                  const SizedBox(height: 3),
                  Text(
                    volumeInfo?.authors?.join(',') ?? '',
                    style: AppTextStyles.textStyle14,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                  const SizedBox(height: 3),
                  Row(
                    children: [
                      Text(
                        priceText,
                        style: AppTextStyles.textStyle20.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Spacer(),
                      BookRating(
                        rating: volumeInfo?.averageRating ?? 0.0,
                        count: volumeInfo?.ratingsCount ?? 0,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
