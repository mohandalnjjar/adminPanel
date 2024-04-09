import 'package:admin_dash_board/core/utils/app_styles.dart';
import 'package:admin_dash_board/core/utils/constance.dart';
import 'package:admin_dash_board/features/home/data/models/card_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CardItem extends StatelessWidget {
  const CardItem({
    super.key,
    required this.cardModel,
  });
  final CardModel cardModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: cardModel.onPressed,
      child: Align(
        alignment: Alignment.center,
        child: SizedBox(
          width: MediaQuery.sizeOf(context).width * .5,
          child: AspectRatio(
            aspectRatio: 1.2 / 1,
            child: Container(
              decoration: BoxDecoration(
                color: Constance.kSubPrimary,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Image.asset(cardModel.image),
                    ),
                  ),
                  Text(
                    cardModel.title,
                    style: AppStyles.styleReqular19,
                  ),
                  const SizedBox(
                    height: 15,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
