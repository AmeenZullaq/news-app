import 'package:flutter/material.dart';
import 'package:news_app/core/utils/styles.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'News',
          style: Styles.textStyle18.copyWith(
            color: Colors.black,
          ),
        ),
        Text(
          'Cloud',
          style: Styles.textStyle18.copyWith(
            color: Colors.orange,
          ),
        ),
      ],
    );
  }
}
