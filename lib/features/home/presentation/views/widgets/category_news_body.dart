import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/features/home/presentation/manager/fetch_news_by_category_cubit/fetch_news_by_category_cubit.dart';
import 'package:news_app/features/home/presentation/views/widgets/category_news_app_bar.dart';
import 'category_news_list_view.dart';

class CategoryNewsBody extends StatefulWidget {
  const CategoryNewsBody({super.key, required this.category});
  final String category;
  @override
  State<CategoryNewsBody> createState() => _CategoryNewsBodyState();
}

class _CategoryNewsBodyState extends State<CategoryNewsBody> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<FetchNewsByCategoryCubit>(context).getNewsByCategory(
      category: widget.category,
    );
  }

  @override
  Widget build(BuildContext context) {
    return  CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        CategoryNewsAppBar(category: widget.category),
      const  CategoryNewsListView(),
      ],
    );
  }
}
