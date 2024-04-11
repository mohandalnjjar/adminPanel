import 'package:admin_dash_board/core/utils/app_styles.dart';
import 'package:admin_dash_board/features/upload/presentation/widgets/upload_view_body.dart';
import 'package:flutter/material.dart';

class UploadProductView extends StatelessWidget {
  const UploadProductView({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Upload Product',
          style: AppStyles.styleSemiBold24,
        ),
        centerTitle: true,
      ),
      body: UploadViewBody(),
    );
  }
}
