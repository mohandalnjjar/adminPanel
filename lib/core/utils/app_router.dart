import 'package:admin_dash_board/core/utils/constance.dart';
import 'package:admin_dash_board/features/home/data/product_model.dart';
import 'package:admin_dash_board/features/home/presentation/views/home_view.dart';
import 'package:admin_dash_board/features/home/presentation/views/oreders_View.dart';
import 'package:admin_dash_board/features/home/presentation/views/search_view.dart';
import 'package:admin_dash_board/features/upload/presentation/views/edit_product.dart';
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
        path: Constance.kUploadProductViewRouter,
        builder: (context, state) => const UploadProductView(),
      ),
      GoRoute(
        path: Constance.kEditProductViewRouter,
        builder: (context, state) => EditProductView(
          productModel: state.extra as ProductModel,
        ),
      )
    ],
  );
}
