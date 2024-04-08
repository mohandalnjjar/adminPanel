import 'package:admin_dash_board/core/utils/app_router.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(
    const AdmidDashBoard(),
  );
}

class AdmidDashBoard extends StatelessWidget {
  const AdmidDashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouterConfig.router,
      debugShowCheckedModeBanner: false,
    );
  }
}
