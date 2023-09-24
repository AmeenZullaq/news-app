import 'package:go_router/go_router.dart';
import 'package:news_app/features/home/presentation/views/category_view.dart';
import 'package:news_app/features/home/presentation/views/details_view.dart';
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
        builder: (context, state) =>
            CategoryView(category: state.extra as String),
      ),
      GoRoute(
        path: kDetailsView,
        builder: (context, state) => const DetailsView(),
      ),
    ],
  );
}
