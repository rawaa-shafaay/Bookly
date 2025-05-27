import 'package:bookly/core/theme/app_text_styles.dart';
import 'package:bookly/modules/book_details/widgets/book_action_buttons.dart';
import 'package:bookly/modules/book_details/widgets/book_details_app_bar.dart';
import 'package:bookly/modules/book_details/widgets/similar_books_section.dart';
import 'package:bookly/modules/home/widgets/book_rating.dart';
import 'package:bookly/modules/home/widgets/book_cover_image.dart';
import 'package:flutter/material.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return LayoutBuilder(
      builder: (context, constraints) {
        // We will compare the content height to screen height later
        final contentHeight = constraints.maxHeight;

        final shouldScroll = contentHeight > screenHeight;
        return SingleChildScrollView(
          physics:
              shouldScroll
                  ? const BouncingScrollPhysics()
                  : const NeverScrollableScrollPhysics(),
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: MediaQuery.of(context).size.height,
            ),
            child: IntrinsicHeight(
              child: Column(
                children: [
                  _buildAppBar(),
                  _buildCoverImage(context),
                  _buildTitleAndAuthor(),
                  const BookRating(mainAxisAlignment: MainAxisAlignment.center),
                  const SizedBox(height: 37),
                  const BookActionButtons(),
                  const SizedBox(height: 50),
                  _buildSectionTitle(),
                  const SizedBox(height: 10),
                  _buildSimilarBooksList(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildAppBar() => const BookDetailsAppBar();

  Widget _buildCoverImage(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width * .27),
      child: const BookCoverImage(),
    );
  }

  Widget _buildTitleAndAuthor() => Column(
    children: const [
      SizedBox(height: 26),
      Text(
        'I Hid My Voice',
        style: AppTextStyles.textStyle30,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ),
      SizedBox(height: 2),
      Opacity(
        opacity: 0.7,
        child: Text('J.K. Rowling', style: AppTextStyles.textStyle18),
      ),
      SizedBox(height: 10),
    ],
  );

  Widget _buildSectionTitle() => Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Align(
      alignment: Alignment.centerLeft,
      child: Text(
        'You May Also Like',
        style: AppTextStyles.textStyle14.copyWith(fontWeight: FontWeight.w600),
      ),
    ),
  );

  Widget _buildSimilarBooksList() => const Padding(
    padding: EdgeInsets.symmetric(horizontal: 10),
    child: SimilarBooksSection(),
  );
}
