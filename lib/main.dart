import 'package:admin_dash_board/features/home_feature/presentation/views/home_view.dart';
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
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
