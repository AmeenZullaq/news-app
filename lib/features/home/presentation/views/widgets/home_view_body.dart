import 'package:flutter/material.dart';
import 'category_list_view.dart';
import 'custom_app_bar.dart';
import 'news_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(
        top: 16,
        right: 16,
        left: 16,
      ),
      child: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                CustomAppBar(),
                SizedBox(
                  height: 20,
                ),
                CategoryListView(),
                SizedBox(
                  height: 32,
                ),
              ],
            ),
          ),
         NewsListView(),

        ],
      ),
    );
  }
}
