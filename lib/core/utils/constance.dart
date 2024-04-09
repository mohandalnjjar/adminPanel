import 'package:flutter/material.dart';

class Constance {
  //App colors
  static Color kSubPrimary = Colors.grey.withOpacity(.1);

  //routers
  static String kHomeViewRouter = '/';
  static String kSearchViewRouter = '/SearchViewRouter';
  static String kOrdersViewRouter = '/OrdersView';
}

abstract class AppColors {
  static const Color kLightScaffoldColor = Colors.white;
  static const Color klightPrimaryColor = Color(0xff181059);
  static const Color klightCardColor = Color.fromARGB(106, 250, 250, 250);
  static const Color kdarkCardColor = Color(0xff191233);

  static const Color kLightCardColor = Colors.grey;

  static const Color kDarktScaffoldColor = Color.fromARGB(255, 9, 3, 27);
  static const Color kdarkPrimaryColor = Color.fromARGB(255, 94, 75, 236);
}
