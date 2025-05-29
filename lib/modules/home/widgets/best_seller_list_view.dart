import 'package:bookly/core/widgets/error_message.dart';
import 'package:bookly/modules/home/widgets/best_seller_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/best seller books/best_seller_books_cubit.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BestSellerBooksCubit, BestSellerBooksState>(
      builder: (context, state) {
        if (state is BestSellerBooksLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is BestSellerBooksFailure) {
          return ErrorMessage(message: state.errMessage, onRetry: () {});
        }
        if (state is BestSellerBooksSuccess) {
          return ListView.builder(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            itemCount: state.books.length,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: BestSellerListViewItem(bookModel: state.books[index]),
              );
            },
          );
        }
        return const SizedBox();
      },
    );
  }
}
