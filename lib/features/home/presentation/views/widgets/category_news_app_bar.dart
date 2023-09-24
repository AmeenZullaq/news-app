import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:news_app/core/utils/styles.dart';

class CategoryNewsAppBar extends StatelessWidget {
  const CategoryNewsAppBar({super.key, required this.category});
  final String category;
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: IconButton(
        onPressed: () {
          GoRouter.of(context).pop();
        },
        icon: const Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
      ),
      title: Text(
        '$category News',
        style: Styles.textStyle20.copyWith(),
      ),
      centerTitle: true,
    );
  }
}
