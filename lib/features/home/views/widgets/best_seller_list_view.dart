import 'package:bookly/core/widgets/error_message.dart';
import 'package:bookly/features/home/view_model/best_seller_books_cubit.dart';
import 'package:bookly/features/home/view_model/best_seller_books_state.dart';
import 'package:bookly/features/home/views/widgets/best_seller_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BestSellerBooksCubit, BestSellerBooksState>(
      builder: (context, state) {
        return state.when(
          initial: () => const SizedBox(),
          loading: () => _buildLoading(),
          failure: (message) => _buildFailure(context, message),
          success: (books) => _buildSuccess(books),
        );
      },
    );
  }

  Widget _buildLoading() => const Center(child: CircularProgressIndicator());

  Widget _buildFailure(BuildContext context, String message) {
    return ErrorMessage(
      message: message,
      onRetry:
          () => context.read<BestSellerBooksCubit>().fetchBestSellerBooks(),
    );
  }

  Widget _buildSuccess(List books) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: books.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 4),
          child: BestSellerListViewItem(book: books[index]),
        );
      },
    );
  }
}
