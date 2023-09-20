import 'package:flutter/material.dart';
import 'package:news_app/features/home/data/models/category_model/category_model.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.categoryMode,});

  final CategoryModel categoryMode ;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.7 / 1,
      child: GestureDetector(
        onTap: () {
          
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(
              Radius.circular(
                8,
              ),
            ),
            image: DecorationImage(
                image: AssetImage(
                  categoryMode.imagePath,
                ),
                fit: BoxFit.fill),
          ),
        ),
      ),
    );
  }
}
