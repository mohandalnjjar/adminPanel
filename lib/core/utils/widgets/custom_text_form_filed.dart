import 'package:flutter/material.dart';

class CustomTextFromField extends StatelessWidget {
  const CustomTextFromField({
    super.key,
    required this.hint,
    this.prefixIcon,
    this.keyBordType,
    this.onSaved,
    this.validator,
    this.controller,
    this.onFieldSubmitted,
    this.focusNode,
    this.onChanged,
    this.suffixIcon,
    this.contentPadding,
    this.minLines,
    this.maxLines,
    this.lableText,
  });

  final String hint;
  final Widget? prefixIcon;
  final Widget? suffixIcon;

  final void Function(String)? onChanged;
  final TextInputType? keyBordType;
  final void Function(String?)? onSaved;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final void Function(String)? onFieldSubmitted;
  final FocusNode? focusNode;
  final EdgeInsetsGeometry? contentPadding;
  final int? minLines;
  final int? maxLines;
  final Widget? lableText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxLines,
      minLines: minLines,
      onChanged: onChanged,
      focusNode: focusNode,
      onFieldSubmitted: onFieldSubmitted,
      controller: controller,
      keyboardType: keyBordType,
      onSaved: onSaved,
      validator: validator,
      decoration: InputDecoration(
        label: lableText,
        contentPadding: contentPadding,
        suffixIcon: suffixIcon,
        filled: true,
        prefixIcon: prefixIcon,
        hintText: hint,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(
            style: BorderStyle.none,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(
            style: BorderStyle.none,
          ),
        ),
      ),
    );
  }
}
