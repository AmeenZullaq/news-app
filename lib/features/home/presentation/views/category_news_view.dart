import 'package:flutter/material.dart';
import 'widgets/category_news_body.dart';

class CategoryNewsView extends StatelessWidget {
  const CategoryNewsView({super.key, required this.category});
  final String category;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(
            bottom: 16,
            left: 16,
            right: 16,
          ),
          child: CategoryNewsBody(category: category),
        ),
      ),
    );
  }
}
