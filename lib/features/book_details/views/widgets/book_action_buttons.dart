import 'package:bookly/features/book_details/views/widgets/common_button.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BookActionButtons extends StatelessWidget {
  const BookActionButtons({
    super.key,
    required this.isForSale,
    required this.priceText,
    required this.previewLink,
  });

  final bool isForSale;
  final String priceText;
  final String previewLink;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Expanded(
            child: CommonButton(
              text: isForSale ? priceText : 'Free',
              textColor: Colors.black,
              backGroundColor: Colors.white,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(12),
                bottomLeft: Radius.circular(12),
              ),
            ),
          ),
          Expanded(
            child: CommonButton(
              text: 'Free Preview',
              textColor: Colors.white,
              backGroundColor: const Color.fromARGB(255, 218, 157, 91),
              onTap: () => _launchPreview(context),
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(12),
                bottomRight: Radius.circular(12),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _launchPreview(BuildContext context) async {
    if (previewLink.isEmpty) {
      _showSnackBar(context, 'Preview not available');
      return;
    }

    final uri = Uri.parse(previewLink);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    } else {
      _showSnackBar(context, 'Could not launch preview');
    }
  }

  void _showSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(message)));
  }
}
