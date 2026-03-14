import 'package:e_commerce_app/core/theme/constant_color.dart';
import 'package:e_commerce_app/core/widget/button/custom_rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextformField extends StatefulWidget {
  final String fieldKey;
  final String title;
  final TextEditingController controller;
  final TextInputType textInputType;
  final String hintText;
  final String? Function(String?)? validator;
  final FocusNode? focusNode;
  final String? errorText;
  final TextInputAction textInputAction;
  final bool autoFocus;
  const CustomTextformField({
    super.key,
    required this.title,
    required this.controller,
    this.textInputType = TextInputType.text,
    required this.hintText,
    this.validator,
    required this.fieldKey,
    this.focusNode,
    this.errorText,
    this.textInputAction = TextInputAction.next,
    this.autoFocus = false,
  });

  @override
  State<CustomTextformField> createState() => _CustomTextformFieldState();
}

class _CustomTextformFieldState extends State<CustomTextformField> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(widget.title),
        SizedBox(height: 10.h),
        Material(
          elevation: 0.0,
          color: AppColors.white,
          child: TextFormField(
            forceErrorText: widget.errorText,
            key: Key(widget.fieldKey),
            controller: widget.controller,
            focusNode: widget.focusNode,
            keyboardType: widget.textInputType,
            textInputAction: widget.textInputAction,
            textAlignVertical: TextAlignVertical.center,
            autofocus: widget.autoFocus,
            decoration: InputDecoration(
              hintText: widget.hintText,
              hintStyle: textTheme.bodyMedium?.copyWith(
                color: AppColors.greylight,
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.primaryColor, width: 2),
                borderRadius: BorderRadius.circular(8.r),
              ),
            ),
            validator: widget.validator,
          ),
        ),
      ],
    );
  }
}
