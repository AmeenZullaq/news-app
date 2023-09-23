import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:news_app/core/utils/app_router.dart';
import 'package:news_app/features/home/data/models/category_model/category_model.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
    required this.categoryModel,
  });
  final CategoryModel categoryModel;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.7 / 1,
      child: GestureDetector(
        onTap: () {
          GoRouter.of(context).push(
            AppRouter.kCategoryView,
            extra: categoryModel.category,
          );
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
                  categoryModel.imagePath,
                ),
                fit: BoxFit.fill),
          ),
        ),
      ),
    );
  }
}
