import 'package:flutter/material.dart';
import 'package:news_app/features/home/data/models/category_model/get_category_data.dart';
import 'category_card.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({super.key});

  @override
  Widget build(BuildContext context) {
    final categoryModel = GetCategoryData().getCategoryData();
    return SizedBox(
      height: MediaQuery.of(context).size.height * .16,
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return CategoryCard(categoryModel: categoryModel[index]);
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
