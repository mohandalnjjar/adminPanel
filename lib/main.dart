import 'package:admin_dash_board/core/utils/app_router.dart';
import 'package:admin_dash_board/features/home/presentation/manager/product_Provider.dart';
import 'package:admin_dash_board/features/theme/data/repositories/theme_repo.dart';
import 'package:admin_dash_board/features/theme/presentation/manager/theme_provider/theme_provider.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main(List<String> args) {
  runApp(
    DevicePreview(
      enabled: false,
      builder: (context) => const AdmidDashBoard(),
    ),
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
        ChangeNotifierProvider(
          create: (context) => ThemeProvider()..getTheme(),
        ),
      ],
      child: Consumer<ThemeProvider>(
        builder: (BuildContext context, themeProvider, child) {
          return MaterialApp.router(
            locale: DevicePreview.locale(context),
            builder: DevicePreview.appBuilder,
            theme: ThemeRepo.theme(
                isDarkTheme: themeProvider.getIsDarkTheme, context: context),
            routerConfig: AppRouterConfig.router,
            debugShowCheckedModeBanner: false,
          );
        },
      ),
    );
  }
}
