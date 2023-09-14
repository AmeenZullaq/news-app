import 'package:flutter/material.dart';
import 'package:news_app/features/home/data/models/category_model.dart';
import 'category_card.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({super.key});

  final List<CategoryModel> categories = const [
    CategoryModel(
      categoryName: 'Business',
      imageUrl: 'assets/images/business_analytics.png',
    ),
    CategoryModel(
      categoryName: 'General',
      imageUrl: 'assets/images/general.jpg',
    ),
    CategoryModel(
      categoryName: 'Health',
      imageUrl: 'assets/images/health.jpg',
    ),
    CategoryModel(
      categoryName: 'Intertainment',
      imageUrl: 'assets/images/intertiment.jpg',
    ),
    CategoryModel(
      categoryName: 'Science',
      imageUrl: 'assets/images/Science.jpg',
    ),
    CategoryModel(
      categoryName: 'Sports',
      imageUrl: 'assets/images/sports.jpg',
    ),
    CategoryModel(
      categoryName: 'Technology',
      imageUrl: 'assets/images/technology.jpeg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .16,
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return CategoryCard(categoryModel: categories[index]);
        },
        separatorBuilder: (context, index) {
          return const SizedBox(
            width: 10,
          );
        },
        itemCount: 10,
      ),
    );
  }
}
