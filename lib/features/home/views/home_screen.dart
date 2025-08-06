import 'package:bookly/core/di/service_locator.dart';
import 'package:bookly/core/theme/app_text_styles.dart';
import 'package:bookly/features/home/view_model/best_seller_books_cubit.dart';
import 'package:bookly/features/home/view_model/featured_books_cubit.dart';
import 'package:bookly/features/home/views/widgets/best_seller_list_view.dart';
import 'package:bookly/features/home/views/widgets/featured_list_view.dart';
import 'package:bookly/features/home/views/widgets/home_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late final FeaturedBooksCubit featuredCubit;
  late final BestSellerBooksCubit bestSellerCubit;

  @override
  void initState() {
    super.initState();
    featuredCubit = getIt<FeaturedBooksCubit>()..fetchFeaturedBooks();
    bestSellerCubit = getIt<BestSellerBooksCubit>()..fetchBestSellerBooks();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider.value(value: featuredCubit),
        BlocProvider.value(value: bestSellerCubit),
      ],
      child: const SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
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
          ),
        ),
      ),
    );
  }
}
