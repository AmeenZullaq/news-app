import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/core/utils/service_locator.dart';
import 'package:news_app/features/home/data/repos/home_repo_impl.dart';
import 'package:news_app/features/home/presentation/manager/fetch_news_cubit/fetch_news_cubit.dart';
import 'package:news_app/features/home/presentation/views/home_view.dart';

void main() {
  setupServiceLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FetchNewsCubit(
        getIt.get<HomeRepoImpl>(),
      )..getNews(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeView(),
      ),
    );
  }
}
