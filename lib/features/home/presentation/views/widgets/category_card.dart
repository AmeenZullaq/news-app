import 'package:flutter/material.dart';
import 'package:news_app/core/utils/styles.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.imageUrl});

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.7 / 1,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(
              8,
            ),
          ),
          image: DecorationImage(
              image: AssetImage(
                imageUrl,
              ),
              fit: BoxFit.fill),
        ),
        child: Center(
          child: Text(
            '',
            style: Styles.textStyle18.copyWith(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
