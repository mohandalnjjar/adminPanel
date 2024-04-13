import 'dart:io';

import 'package:admin_dash_board/core/utils/app_assets.dart';
import 'package:admin_dash_board/core/utils/app_methods.dart';
import 'package:admin_dash_board/core/utils/app_styles.dart';
import 'package:admin_dash_board/features/home/data/product_model.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';

class AddImagePicture extends StatefulWidget {
  const AddImagePicture({
    super.key,
    this.productModel,
  });

  final ProductModel? productModel;

  @override
  State<AddImagePicture> createState() => _AddImagePictureState();
}

class _AddImagePictureState extends State<AddImagePicture> {
  @override
  void initState() {
    if (widget.productModel != null) {
      productNetworkIamage = widget.productModel!.image;
    }
    super.initState();
  }

  XFile? pickedImage;
  ImagePicker picker = ImagePicker();
  String? productNetworkIamage;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          if (productNetworkIamage != null) ...[
            SizedBox(
              height: MediaQuery.sizeOf(context).height * .27,
              child: Flexible(
                child: AspectRatio(
                  aspectRatio: 1 / 1,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.network(
                      fit: BoxFit.fill,
                      productNetworkIamage!,
                    ),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () async {
                    await AppMethods.addImageDialog(
                      context,
                      camerFunc: () async {
                        productNetworkIamage = null;

                        pickedImage =
                            await picker.pickImage(source: ImageSource.camera);
                        setState(() {
                          context.pop();
                        });
                      },
                      galleryFunc: () async {
                        productNetworkIamage = null;
                        pickedImage =
                            await picker.pickImage(source: ImageSource.gallery);
                        setState(() {
                          context.pop();
                        });
                      },
                    );
                  },
                  child: Text(
                    'change image',
                    style: AppStyles.styleReqular16.copyWith(
                      color: Colors.blue,
                    ),
                  ),
                ),
              ],
            ),
          ] else if (pickedImage == null && pickedImage == null) ...[
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * .20,
              child: Flexible(
                child: AspectRatio(
                  aspectRatio: 1,
                  child: Image.asset(
                    AppAssets.photo,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
            TextButton(
              onPressed: () async {
                await AppMethods.addImageDialog(
                  context,
                  camerFunc: () async {
                    pickedImage =
                        await picker.pickImage(source: ImageSource.camera);
                    setState(() {
                      context.pop();
                    });
                  },
                  galleryFunc: () async {
                    pickedImage =
                        await picker.pickImage(source: ImageSource.gallery);
                    setState(() {
                      context.pop();
                    });
                  },
                );
              },
              child: Text(
                'Add Image',
                style: AppStyles.styleReqular16.copyWith(
                  color: Colors.blue,
                ),
              ),
            ),
          ] else ...[
            SizedBox(
              height: MediaQuery.sizeOf(context).height * .27,
              child: Flexible(
                child: AspectRatio(
                  aspectRatio: 1 / 1,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.file(
                      fit: BoxFit.fill,
                      File(
                        pickedImage!.path,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () async {
                    await AppMethods.addImageDialog(
                      context,
                      camerFunc: () async {
                        pickedImage =
                            await picker.pickImage(source: ImageSource.camera);
                        setState(() {
                          context.pop();
                        });
                      },
                      galleryFunc: () async {
                        pickedImage =
                            await picker.pickImage(source: ImageSource.gallery);
                        setState(() {
                          context.pop();
                        });
                      },
                    );
                  },
                  child: Text(
                    'change image',
                    style: AppStyles.styleReqular16.copyWith(
                      color: Colors.blue,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ],
      ),
    );
  }
}
