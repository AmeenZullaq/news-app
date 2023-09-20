import 'package:flutter/material.dart';
import 'package:news_app/core/utils/assets.dart';
import 'package:news_app/features/home/data/models/category_model/category_model.dart';
import 'category_card.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({super.key});

  final List<CategoryModel> categoryModel = const [
    CategoryModel(Assets.kBusinessImage, 'business'),
    CategoryModel(Assets.kGeneralImage, 'general'),
    CategoryModel(Assets.kHealthImage, 'health'),
    CategoryModel(Assets.kIntertainmentImage, 'entertainment'),
    CategoryModel(Assets.kScienceImage, 'science'),
    CategoryModel(Assets.kSportImage, 'sports'),
    CategoryModel(Assets.kTechnologyImage, 'technology'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .16,
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return CategoryCard(categoryMode: categoryModel[index]);
        },
        separatorBuilder: (context, index) {
          return const SizedBox(
            width: 22,
          );
        },
        itemCount: categoryModel.length,
      ),
    );
  }
}
