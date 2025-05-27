import 'package:flutter/material.dart';
import 'package:bookly/core/constants/app_assets.dart';

class BookCoverImage extends StatelessWidget {
  const BookCoverImage({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 2.5 / 4, child: _buildBackgroundImage());
  }

  Widget _buildBackgroundImage() {
    return Container(
      margin: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        image: const DecorationImage(
          image: AssetImage(AppAssets.testImage),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
