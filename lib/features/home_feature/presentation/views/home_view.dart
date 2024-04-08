import 'package:admin_dash_board/core/utils/app_styles.dart';
import 'package:admin_dash_board/features/home_feature/presentation/widgets/home_view_body.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Smart Store',
          style: AppStyles.styleSemiBold24,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              FontAwesomeIcons.moon,
            ),
          ),
        ],
      ),
      body: const HomeViewBody(),
    );
  }
}
