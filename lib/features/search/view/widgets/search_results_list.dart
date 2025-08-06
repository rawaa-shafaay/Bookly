import 'package:bookly/domain/entities/book.dart';
import 'package:bookly/core/theme/app_text_styles.dart';
import 'package:bookly/features/book_details/views/book_details_screen.dart';
import 'package:bookly/features/home/views/widgets/book_rating.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class SearchResultsList extends StatelessWidget {
  final List<Book> books;

  const SearchResultsList({super.key, required this.books});

  @override
  Widget build(BuildContext context) {
    if (books.isEmpty) {
      return const Center(child: Text('No books found.'));
    }

    return ListView.separated(
      itemCount: books.length,
      separatorBuilder: (_, __) => const Divider(height: 1),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      itemBuilder: (context, index) {
        final book = books[index];
        return _BookListTile(book: book);
      },
    );
  }
}

class _BookListTile extends StatelessWidget {
  final Book book;

  const _BookListTile({required this.book});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(vertical: 8),
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: CachedNetworkImage(
          imageUrl: book.imageUrl,
          width: 50,
          height: 75,
          fit: BoxFit.cover,
          errorWidget: (_, __, ___) => const Icon(Icons.broken_image),
        ),
      ),
      title: Text(
        book.title,
        style: AppTextStyles.textStyle16,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 4),
          Text(
            book.author,
            style: AppTextStyles.textStyle14.copyWith(color: Colors.grey[400]),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 4),
          BookRating(rating: book.rating, count: book.ratingCount),
        ],
      ),
      onTap: () {
        Navigator.push(
          context,
          PageTransition(
            type: PageTransitionType.leftToRight,
            child: BookDetailsScreen(book: book),
          ),
        );
      },
    );
  }
}
