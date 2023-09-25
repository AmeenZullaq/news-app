import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/core/widgets/custom_error_widget.dart';
import 'package:news_app/core/widgets/custom_loading_indecator.dart';
import 'package:news_app/features/home/presentation/manager/fetch_news_by_category_cubit/fetch_news_by_category_cubit.dart';
import 'news_tile.dart';

class CategoryNewsListView extends StatelessWidget {
  const CategoryNewsListView({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchNewsByCategoryCubit, FetchNewsByCategoryState>(
      builder: (context, state) {
        if (state is FetchNewsByCategorySuccess) {
          return SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: state.articles.length,
              (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 22),
                  child: NewsTile(articleModel: state.articles[index]),
                );
              },
            ),
          );
        } else if (state is FetchNewsByCategoryFailure) {
          return SliverFillRemaining(
            child: CustomErrorWidget(errMessage: state.errMessage),
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
