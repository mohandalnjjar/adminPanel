import 'package:admin_dash_board/core/utils/app_styles.dart';
import 'package:admin_dash_board/features/home/presentation/widgets/home_view_body.dart';
import 'package:admin_dash_board/features/theme/presentation/manager/theme_provider/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Smart Store',
          style: AppStyles.styleSemiBold24,
        ),
        actions: [
          IconButton(
            onPressed: () {
              themeProvider.setDarkTheme(
                themeValue: !themeProvider.getIsDarkTheme,
              );
            },
            icon: Icon(
              themeProvider.getIsDarkTheme ? Icons.light_mode : Icons.dark_mode,
            ),
          ),
        ],
      ),
      body: const HomeViewBody(),
    );
  }
}
