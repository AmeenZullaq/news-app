import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/features/home/data/models/category_model/category_model.dart';
import '../../manager/fetch_news_cubit/fetch_news_cubit.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
    required this.categoryMode,
  });

  final CategoryModel categoryMode;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.7 / 1,
      child: GestureDetector(
        onTap: () {
          BlocProvider.of<FetchNewsCubit>(context)
              .getNews(category: categoryMode.categoryName);
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
