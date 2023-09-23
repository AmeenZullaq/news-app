import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/features/home/presentation/manager/fetch_news_cubit/fetch_news_cubit.dart';
import 'package:news_app/features/home/presentation/views/widgets/news_list_view.dart';

class CategoryViewBody extends StatefulWidget {
  const CategoryViewBody({super.key, required this.category});
  final String category;

  @override
  State<CategoryViewBody> createState() => _CategoryViewBodyState();
}

class _CategoryViewBodyState extends State<CategoryViewBody> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<FetchNewsCubit>(context).getNews(category: widget.category);
  }

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        NewsListView(),
      ],
    );
  }
}
