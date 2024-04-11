import 'package:admin_dash_board/core/utils/app_styles.dart';
import 'package:admin_dash_board/core/utils/constance.dart';
import 'package:admin_dash_board/core/utils/widgets/custom_text_form_filed.dart';
import 'package:admin_dash_board/features/home/data/product_model.dart';
import 'package:admin_dash_board/features/upload/presentation/widgets/add_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class EditViewBody extends StatefulWidget {
  const EditViewBody({
    super.key,
    required this.productModel,
  });

  final ProductModel productModel;

  @override
  State<EditViewBody> createState() => _EditAndUploadViewBodyState();
}

class _EditAndUploadViewBodyState extends State<EditViewBody> {
  late TextEditingController _productTitleController,
      _productPriceController,
      _productQuantityController,
      _productDescriptionController;
  @override
  void initState() {
    _productTitleController =
        TextEditingController(text: widget.productModel.title);
    _productPriceController =
        TextEditingController(text: widget.productModel.title);
    _productQuantityController =
        TextEditingController(text: widget.productModel.title);
    _productDescriptionController =
        TextEditingController(text: widget.productModel.title);

    super.initState();
  }

  @override
  void dispose() {
    _productTitleController.dispose();
    _productPriceController.dispose();
    _productQuantityController.dispose();
    _productDescriptionController.dispose();
    super.dispose();
  }

  String? _categoryValue;
  bool? isEditing = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            AddImagePicture(),
            DropdownButton(
              dropdownColor: Theme.of(context).scaffoldBackgroundColor,
              hint: const Text(
                'Choose category',
                style: AppStyles.styleReqular16,
              ),
              value: _categoryValue,
              items: Constance.dropdownMenuItems,
              onChanged: (String? value) {
                setState(
                  () {
                    _categoryValue = value;
                  },
                );
              },
            ),
            const SizedBox(
              height: 10,
            ),
            CustomTextFromField(
              controller: _productTitleController,
              hint: 'Edit title',
              keyBordType: TextInputType.text,
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Expanded(
                  child: CustomTextFromField(
                    controller: _productPriceController,
                    maxLines: 1,
                    prefixIcon: const Icon(Icons.attach_money_outlined),
                    hint: 'Edit Price',
                    keyBordType: TextInputType.number,
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Expanded(
                  child: CustomTextFromField(
                    controller: _productQuantityController,
                    maxLines: 1,
                    hint: 'Edit Quantity',
                    keyBordType: TextInputType.number,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            CustomTextFromField(
              controller: _productDescriptionController,
              minLines: 3,
              maxLines: 8,
              hint: 'Edit Description',
              keyBordType: TextInputType.text,
            ),
          ],
        ),
      ),
    );
  }
}
