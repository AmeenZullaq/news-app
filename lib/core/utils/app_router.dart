import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:news_app/core/utils/service_locator.dart';
import 'package:news_app/features/home/data/models/artical_model/artical_model.dart';
import 'package:news_app/features/home/data/repos/home_repo_impl.dart';
import 'package:news_app/features/home/presentation/manager/fetch_news_by_category_cubit/fetch_news_by_category_cubit.dart';
import 'package:news_app/features/home/presentation/views/category_news_view.dart';
import 'package:news_app/features/home/presentation/views/news_details_view.dart';
import '../../features/home/presentation/views/home_view.dart';

abstract class AppRouter {
  static const kHomeView = '/';
  static const kCategoryView = '/categoryView';
  static const kDetailsView = '/detailsView';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kCategoryView,
        builder: (context, state) => BlocProvider(
          create: (context) => FetchNewsByCategoryCubit(
            getIt.get<HomeRepoImpl>(),
          ),
          child: CategoryNewsView(
            category: state.extra as String,
          ),
        ),
      ),
      GoRoute(
        path: kDetailsView,
        builder: (context, state) => DetailsView(
          articleModel: state.extra as ArticleModel,
        ),
      ),
    ],
  );
}
