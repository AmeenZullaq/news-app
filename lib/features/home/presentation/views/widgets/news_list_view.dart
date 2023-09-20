import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/core/widgets/custom_error_widget.dart';
import 'package:news_app/core/widgets/custom_loading_indecator.dart';
import 'package:news_app/features/home/presentation/manager/fetch_news_cubit/fetch_news_cubit.dart';
import 'news_tile.dart';

class NewsListView extends StatelessWidget {
  const NewsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchNewsCubit, FetchNewsState>(
      builder: (context, state) {
        if (state is FetchNewsSuccess) {
          return SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(
                    bottom: 22,
                  ),
                  child: NewsTile(articleModel: state.articles[index]),
                );
              },
              childCount: state.articles.length,
            ), 
          );
        } else if (state is FetchNewsfailure) {
          return SliverToBoxAdapter(
            child: CustomErrorWidget(
              errMessage: state.errMessage,
            ),
          );
        } else {
          return const SliverFillRemaining(
            child: CustomLoadingIndecator(),
          );
        }
      },
    );
  }
}
