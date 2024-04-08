import 'package:admin_dash_board/core/utils/constance.dart';
import 'package:admin_dash_board/features/home_feature/presentation/views/home_view.dart';
import 'package:admin_dash_board/features/home_feature/presentation/views/search_view.dart';
import 'package:go_router/go_router.dart';

class AppRouterConfig {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: Constance.kHomeViewRouter,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: Constance.kSearchViewRouter,
        builder: (context, state) => const SearchView(),
      )
    ],
  );
}
