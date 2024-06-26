import 'package:admin_dash_board/core/utils/app_styles.dart';
import 'package:admin_dash_board/core/utils/constance.dart';
import 'package:admin_dash_board/core/utils/widgets/custom_text_form_filed.dart';
import 'package:admin_dash_board/features/upload/presentation/widgets/add_image.dart';
import 'package:flutter/material.dart';

class UploadViewBody extends StatefulWidget {
  const UploadViewBody({
    super.key,
  });

  @override
  State<UploadViewBody> createState() => _UploadViewBodyState();
}

class _UploadViewBodyState extends State<UploadViewBody> {
  late TextEditingController _productTitleController,
      _productPriceController,
      _productQuantityController,
      _productDescriptionController;
  @override
  void initState() {
    _productTitleController = TextEditingController();
    _productPriceController = TextEditingController();
    _productQuantityController = TextEditingController();
    _productDescriptionController = TextEditingController();

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
            const AddImagePicture(),
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
            const CustomTextFromField(
              hint: 'Product title',
              keyBordType: TextInputType.text,
            ),
            const SizedBox(
              height: 30,
            ),
            const Row(
              children: [
                Expanded(
                  child: CustomTextFromField(
                    maxLines: 1,
                    prefixIcon: Icon(Icons.attach_money_outlined),
                    hint: 'Price',
                    keyBordType: TextInputType.number,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Expanded(
                  child: CustomTextFromField(
                    maxLines: 1,
                    hint: 'Quantity',
                    keyBordType: TextInputType.number,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            const CustomTextFromField(
              minLines: 3,
              maxLines: 8,
              hint: 'Description',
              keyBordType: TextInputType.text,
            ),
          ],
        ),
      ),
    );
  }
}
