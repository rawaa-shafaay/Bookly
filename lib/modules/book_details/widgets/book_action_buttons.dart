import 'package:bookly/modules/book_details/widgets/common_button.dart';
import 'package:flutter/material.dart';

class BookActionButtons extends StatelessWidget {
  const BookActionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: const Row(
        children: [
          Expanded(
            child: CommonButton(
              text: '19.99 €',
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
}
