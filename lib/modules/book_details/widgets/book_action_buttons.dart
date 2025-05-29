import 'package:bookly/modules/book_details/widgets/common_button.dart';
import 'package:bookly/modules/home/models/sale_info.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BookActionButtons extends StatelessWidget {
  const BookActionButtons({
    super.key,
    required this.saleInfo,
    required this.previewLink,
  });
  final SaleInfo? saleInfo;
  final String previewLink;

  @override
  Widget build(BuildContext context) {
    final priceText =
        (saleInfo?.saleability == 'FOR_SALE' &&
                saleInfo?.retailPrice?.amount != null)
            ? '${saleInfo!.retailPrice!.amount} ${saleInfo?.retailPrice?.currencyCode}'
            : 'Free';

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Expanded(
            child: CommonButton(
              text: priceText,
              textColor: Colors.black,
              backGroundColor: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                bottomLeft: Radius.circular(12),
              ),
            ),
          ),
          Expanded(
            child: CommonButton(
              text: 'Free Preivew',
              textColor: Colors.white,
              onTap: () => _launchPreview(context),
              backGroundColor: Color.fromARGB(255, 218, 157, 91),
              borderRadius: BorderRadius.only(
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
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text('Preview not available')));
      return;
    }

    final uri = Uri.parse(previewLink);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    } else {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text('Could not launch preview')));
    }
  }
}
