import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class AppMethods {
  // this class contains the methods that i sue many times inthe applictaion
  static Future<void> addImageDialog(
    BuildContext context, {
    required void Function()? camerFunc,
    required void Function()? galleryFunc,
  }) async {
    return await showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          elevation: 0,
          title: const Center(
            child: Text('choose Photo'),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextButton.icon(
                onPressed: camerFunc,
                icon: const Icon(IconlyLight.camera),
                label: const Text('Camer'),
              ),
              TextButton.icon(
                onPressed: galleryFunc,
                icon: const Icon(IconlyLight.image),
                label: const Text('Gallery'),
              ),
            ],
          ),
        );
      },
    );
  }
}
