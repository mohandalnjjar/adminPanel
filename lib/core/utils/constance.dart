import 'package:admin_dash_board/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class Constance {
  //App colors
  static Color kSubPrimary = Colors.grey.withOpacity(.1);

  //routers
  static String kHomeViewRouter = '/';
  static String kSearchViewRouter = '/SearchViewRouter';
  static String kOrdersViewRouter = '/OrdersViewRouter';
  static String kUploadProductViewRouter = '/UploadProductView';
  static String kEditProductViewRouter = '/kEditProductView';

  static List<String> categoriesList = [
    'phones',
    'clothes',
    'beauty',
    'shoes',
    'funiture',
    'cars',
  ];
  static List<DropdownMenuItem<String>>? get dropdownMenuItems {
    List<DropdownMenuItem<String>>? menuItems =
        List<DropdownMenuItem<String>>.generate(
      categoriesList.length,
      (index) => DropdownMenuItem(
        value: categoriesList[index],
        child: Text(
          categoriesList[index],
          style: AppStyles.styleReqular16,
        ),
      ),
    );
    return menuItems;
  }
}

abstract class AppColors {
  static const Color kLightScaffoldColor = Colors.white;
  static const Color klightPrimaryColor = Color(0xff181059);
  static const Color kdarkCardColor = Color(0xff191233);

  static Color kLightCardColor = Colors.grey.withOpacity(0.1);

  static const Color kDarktScaffoldColor = Color.fromARGB(255, 9, 3, 27);
  static const Color kdarkPrimaryColor = Color.fromARGB(255, 94, 75, 236);
}
