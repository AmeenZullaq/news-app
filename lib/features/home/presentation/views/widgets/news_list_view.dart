import 'package:flutter/material.dart';

import 'news_tile.dart';

class NewsListView extends StatelessWidget {
  const NewsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return const Padding(
            padding: EdgeInsets.only(
              bottom: 22,
            ),
            child: NewsTile(),
          );
        },
        childCount: 10,
      ),
    );
  }
}
