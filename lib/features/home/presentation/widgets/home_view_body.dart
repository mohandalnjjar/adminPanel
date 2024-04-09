import 'package:admin_dash_board/core/utils/app_assets.dart';
import 'package:admin_dash_board/core/utils/constance.dart';
import 'package:admin_dash_board/features/home/data/models/card_model.dart';
import 'package:admin_dash_board/features/home/presentation/widgets/card_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final  List<CardModel> cardModel = [
      CardModel(
        () {},
        title: 'Upload Products',
        image: AppAssets.upload,
      ),
      CardModel(
        () {
          GoRouter.of(context).push(Constance.kSearchViewRouter);
        },
        title: 'View All Products',
        image: AppAssets.cart,
      ),
      CardModel(
        () {
          GoRouter.of(context).push(Constance.kOrdersViewRouter);
        },
        title: 'All Orders',
        image: AppAssets.delivery,
      ),
    ];
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: List.generate(
        3,
        (index) => CardItem(
          cardModel: cardModel[index],
        ),
      ),
    );
  }
}
