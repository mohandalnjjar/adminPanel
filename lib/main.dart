import 'package:admin_dash_board/core/utils/app_router.dart';
import 'package:admin_dash_board/features/home_feature/presentation/manager/product_Provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main(List<String> args) {
  runApp(
    const AdmidDashBoard(),
  );
}

class AdmidDashBoard extends StatelessWidget {
  const AdmidDashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ProductProvider(),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouterConfig.router,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
