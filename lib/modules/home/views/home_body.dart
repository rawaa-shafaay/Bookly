import 'package:bookly/core/theme/app_text_styles.dart';
import 'package:bookly/modules/home/widgets/best_seller_list_view.dart';
import 'package:bookly/modules/home/widgets/home_app_bar.dart';
import 'package:bookly/modules/home/widgets/featured_list_view.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 13),
            child: HomeAppBar(),
          ),
          FeaturedBooksListView(),
          SizedBox(height: 50),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 13),
            child: Text('Best Seller', style: AppTextStyles.textStyle18),
          ),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 13),
            child: BestSellerListView(),
          ),
        ],
      ),
    );
  }
}
