import 'package:flutter/material.dart';
import 'package:news_app/core/utils/assets.dart';
import 'category_card.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({super.key});

  final List<String> images = const [
    Assets.kBusinessImage,
    Assets.kGeneralImage,
    Assets.kHealthImage,
    Assets.kIntertainmentImage,
    Assets.kScienceImage,
    Assets.kSportImage,
    Assets.kTechnologyImage,
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
