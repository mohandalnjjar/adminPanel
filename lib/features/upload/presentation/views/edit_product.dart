import 'package:admin_dash_board/core/utils/app_styles.dart';
import 'package:admin_dash_board/features/home/data/product_model.dart';
import 'package:admin_dash_board/features/upload/presentation/widgets/edit_view_body.dart';
import 'package:flutter/material.dart';

class EditProductView extends StatelessWidget {
  const EditProductView({super.key, required this.productModel});
  final ProductModel productModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Edit Product',
            style: AppStyles.styleSemiBold24,
          ),
          centerTitle: true,
        ),
        body: EditViewBody(
          productModel: productModel,
        ));
  }
}
