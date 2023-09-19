import 'package:flutter/material.dart';
import 'package:news_app/core/utils/styles.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({super.key, required this.errMessage});

  final String errMessage;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Center(
        child: Text(
          errMessage,
          style: Styles.textStyle20,
        ),
      ),
    );
  }
}
