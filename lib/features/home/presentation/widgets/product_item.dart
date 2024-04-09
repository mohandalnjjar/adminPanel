import 'package:admin_dash_board/core/utils/app_assets.dart';
import 'package:admin_dash_board/core/utils/app_styles.dart';
import 'package:admin_dash_board/features/home/data/product_model.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({
    super.key,
    required this.productModel,
  });

  final ProductModel productModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.1),
          borderRadius: BorderRadius.circular(14),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(17),
              child: FancyShimmerImage(
                height: 150,
                boxFit: BoxFit.fill,
                imageUrl: productModel.image,
                errorWidget: Image.asset(
                  AppAssets.cart,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Text(
                      productModel.title,
                      style: AppStyles.styleReqular16,
                      maxLines: 2,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Text(
                      '${productModel.price} \$',
                      style: AppStyles.styleSemiGreen17,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
          ],
        ),
      ),
    );
  }
}
