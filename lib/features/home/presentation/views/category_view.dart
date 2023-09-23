import 'package:flutter/material.dart';
import 'widgets/category_view_app_bar.dart';
import 'widgets/category_view_body.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.category});
  final String category;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CategoryViewAppBar(category: category),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: CategoryViewBody(category: category),
        ),
      ),
    );
  }
}
