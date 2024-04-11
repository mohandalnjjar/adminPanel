import 'package:admin_dash_board/core/utils/constance.dart';
import 'package:admin_dash_board/features/home/presentation/views/home_view.dart';
import 'package:admin_dash_board/features/home/presentation/views/oreders_View.dart';
import 'package:admin_dash_board/features/home/presentation/views/search_view.dart';
import 'package:admin_dash_board/features/upload/presentation/views/upload_view.dart';
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
      ),
      GoRoute(
        path: Constance.kOrdersViewRouter,
        builder: (context, state) => const OrdersView(),
      ),
      GoRoute(
        path: Constance.kUploadProductView,
        builder: (context, state) => const UploadProductView(),
      )
    ],
  );
}
