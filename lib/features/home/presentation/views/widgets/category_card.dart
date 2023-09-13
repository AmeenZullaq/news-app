import 'package:flutter/material.dart';
import 'package:news_app/core/utils/assets.dart';
import 'package:news_app/core/utils/styles.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.7 / 1,
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(
              8,
            ),
          ),
          image: DecorationImage(
              image: AssetImage(
                Assets.kTestImage,
              ),
              fit: BoxFit.fill),
        ),
        child: Center(
          child: Text(
            'Bussiness',
            style: Styles.textStyle18.copyWith(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
