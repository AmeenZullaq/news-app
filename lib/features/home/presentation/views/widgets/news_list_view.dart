import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/core/widgets/custom_error_widget.dart';
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
        } else if (state is FetchNewsfailure) {
          return CustomErrorWidget(
            errMessage: state.errMessage,
          );
        } else {
          return const CircularProgressIndicator();
        }
      },
    );
  }
}
