import 'package:flutter/material.dart';

class BookCoverImage extends StatelessWidget {
  const BookCoverImage({super.key, required this.imageUrl});

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 2.5 / 4, child: _buildBackgroundImage());
  }

  Widget _buildBackgroundImage() {
    return Container(
      margin: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        image: DecorationImage(
          image: NetworkImage(imageUrl),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
