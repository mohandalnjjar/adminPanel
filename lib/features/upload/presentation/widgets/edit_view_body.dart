import 'package:admin_dash_board/core/utils/app_styles.dart';
import 'package:admin_dash_board/core/utils/constance.dart';
import 'package:admin_dash_board/core/utils/widgets/custom_text_form_filed.dart';
import 'package:admin_dash_board/features/home/data/product_model.dart';
import 'package:admin_dash_board/features/upload/presentation/widgets/add_image.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class EditViewBody extends StatefulWidget {
  const EditViewBody({
    super.key,
    required this.productModel,
  });

  final ProductModel? productModel;

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
    if (widget.productModel != null) {
      _categoryValue = widget.productModel!.category;
      productNetworkIamage = widget.productModel!.image;
    }
    _productTitleController =
        TextEditingController(text: widget.productModel?.title ?? '');
    _productPriceController =
        TextEditingController(text: '${widget.productModel?.price}');
    _productQuantityController =
        TextEditingController(text: '${widget.productModel?.qty}');
    _productDescriptionController =
        TextEditingController(text: widget.productModel?.description ?? '');

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
  String? productNetworkIamage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          AddImagePicture(
            productModel: widget.productModel,
          ),
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
          Spacer(),
          Row(
            children: [
              Expanded(
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                  onPressed: () {},
                  icon: const Icon(IconlyLight.delete),
                  label: const Text(
                    'Remove',
                    style: AppStyles.styleReqular16,
                  ),
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Expanded(
                child: ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(IconlyLight.upload),
                  label: const Text(
                    'Uplaod Product',
                    style: AppStyles.styleReqular16,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 7,
          )
        ],
      ),
    );
  }
}
