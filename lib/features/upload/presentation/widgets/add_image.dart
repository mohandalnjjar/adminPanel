import 'dart:io';

import 'package:admin_dash_board/core/utils/app_assets.dart';
import 'package:admin_dash_board/core/utils/app_methods.dart';
import 'package:admin_dash_board/core/utils/app_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';

class AddImagePicture extends StatefulWidget {
  const AddImagePicture({
    super.key,
  });

  @override
  State<AddImagePicture> createState() => _AddImagePictureState();
}

class _AddImagePictureState extends State<AddImagePicture> {
  XFile? pickedImage;
  ImagePicker picker = ImagePicker();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * .27,
      child: AspectRatio(
        aspectRatio: 1 / 1,
        child: Column(
          children: [
            if (pickedImage == null) ...[
              const SizedBox(
                height: 10,
              ),
              Flexible(
                child: Image.asset(
                  AppAssets.photo,
                  fit: BoxFit.contain,
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
              Flexible(
                child: AspectRatio(
                  aspectRatio: 1 / 1,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.file(
                      fit: BoxFit.cover,
                      File(
                        pickedImage!.path,
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  TextButton(
                    onPressed: () async {
                      await AppMethods.addImageDialog(
                        context,
                        camerFunc: () async {
                          pickedImage = await picker.pickImage(
                              source: ImageSource.camera);
                          setState(() {
                            context.pop();
                          });
                        },
                        galleryFunc: () async {
                          pickedImage = await picker.pickImage(
                              source: ImageSource.gallery);
                          setState(() {
                            context.pop();
                          });
                        },
                      );
                    },
                    child: Text(
                      'Pick image',
                      style: AppStyles.styleReqular16.copyWith(
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        pickedImage = null;
                      });
                    },
                    child: const Text('Remove image'),
                  ),
                ],
              ),
            ],
          ],
        ),
      ),
    );
  }
}
