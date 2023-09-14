import 'package:flutter/material.dart';
import 'category_card.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({super.key});

  final List<String> images = const [
    'assets/images/business.jpg',
    'assets/images/general.jpg',
    'assets/images/health.jpg',
    'assets/images/interainment.jpg',
    'assets/images/Science.jpg',
    'assets/images/sport.jpg',
    'assets/images/technology.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .16,
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return CategoryCard(imageUrl: images[index]);
        },
        separatorBuilder: (context, index) {
          return const SizedBox(
            width: 22,
          );
        },
        itemCount: images.length,
      ),
    );
  }
}
