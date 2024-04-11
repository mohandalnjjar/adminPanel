import 'package:admin_dash_board/core/utils/app_styles.dart';
import 'package:admin_dash_board/core/utils/constance.dart';
import 'package:admin_dash_board/core/utils/widgets/custom_text_form_filed.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class UploadViewBody extends StatefulWidget {
  const UploadViewBody({
    super.key,
  });

  @override
  State<UploadViewBody> createState() => _UploadViewBodyState();
}

class _UploadViewBodyState extends State<UploadViewBody> {
  String? _categoryValue;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          children: [
            DropdownButton(
                hint: const Text(
                  'Choose category',
                  style: AppStyles.styleReqular16,
                ),
                value: _categoryValue,
                items: Constance.dropdownMenuItems,
                onChanged: (String? value) {
                  setState(() {
                    _categoryValue = value;
                  });
                }),
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
