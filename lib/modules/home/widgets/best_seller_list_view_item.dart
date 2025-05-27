import 'package:bookly/core/constants/app_assets.dart';
import 'package:bookly/core/constants/app_constants.dart';
import 'package:bookly/core/theme/app_text_styles.dart';
import 'package:bookly/modules/book_details/views/book_details_view.dart';
import 'package:bookly/modules/home/widgets/book_rating.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          PageTransition(
            type: PageTransitionType.fade,
            child: const BookDetailsView(),
          ),
        );
      },
      child: SizedBox(
        height: 125,
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 3 / 4,
              child: Container(
                margin: const EdgeInsets.all(4),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                  image: DecorationImage(
                    image: AssetImage(AppAssets.testImage),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 30),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .5,
                    child: Text(
                      'I Hid My Voice',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: AppTextStyles.textStyle20.copyWith(
                        fontFamily: AppConstants.kGTSectraFine,
                      ),
                    ),
                  ),
                  const SizedBox(height: 3),
                  const Text('J.K. Rowling', style: AppTextStyles.textStyle14),
                  const SizedBox(height: 3),
                  Row(
                    children: [
                      Text(
                        '19.99 €',
                        style: AppTextStyles.textStyle20.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Spacer(),
                      const BookRating(),
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
