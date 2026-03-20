import 'package:e_commerce_app/core/theme/constant_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomSearchField extends StatefulWidget {
  final String fieldKey;
  final TextEditingController? controller;
  final TextInputType textInputType;
  final String hintText;
  final String? Function(String?)? validator;
  final FocusNode? focusNode;
  final String? errorText;
  final TextInputAction textInputAction;
  final bool autoFocus;
  final Function(String)? onChanged;
  final Widget? suffixIcon;
  final bool isPassword;
  final bool isneeded;
  final Widget? prefixIcon;
  final Function()? onTap;
  final bool isenable;
  final bool readonly;
  const CustomSearchField({
    super.key,
    this.controller,
    this.textInputType = TextInputType.text,
    required this.hintText,
    this.validator,
    required this.fieldKey,
    this.focusNode,
    this.errorText,
    this.textInputAction = TextInputAction.next,
    this.autoFocus = false,
    this.onChanged,
    this.suffixIcon,
    this.isPassword = false,
    this.isneeded = true,
    this.prefixIcon,
    this.onTap,
    this.isenable = true,
    this.readonly = false,
  });

  @override
  State<CustomSearchField> createState() => _CustomSearchFieldState();
}

class _CustomSearchFieldState extends State<CustomSearchField> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Material(
          elevation: 0.0,
          color: Colors.transparent,
          child: TextFormField(
            readOnly: widget.readonly,
            enabled: widget.isenable,
            onTap: widget.onTap,
            forceErrorText: widget.errorText,
            key: Key(widget.fieldKey),
            controller: widget.controller,
            focusNode: widget.focusNode,
            keyboardType: widget.textInputType,
            textInputAction: widget.textInputAction,
            textAlignVertical: TextAlignVertical.center,
            autofocus: widget.autoFocus,
            onChanged: widget.onChanged,
            cursorColor: AppColors.primaryColor,
            cursorHeight: 14.h,
            cursorErrorColor: AppColors.red,

            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(
                vertical: 8.h,
                horizontal: 10.w,
              ),

              prefixIcon: widget.prefixIcon,
              errorMaxLines: 2,
              errorStyle: theme.textTheme.bodySmall?.copyWith(
                color: AppColors.red,
              ),
              floatingLabelAlignment: FloatingLabelAlignment.start,
              fillColor: AppColors.white,
              filled: true,
              hintText: widget.hintText,
              hintStyle: textTheme.bodyMedium?.copyWith(
                color: AppColors.greyverylight,
              ),
              errorBorder: OutlineInputBorder(borderSide: BorderSide.none),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(16.r),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(16.r),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(16.r),
              ),
              disabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: AppColors.trasparentColor,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(16.r),
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.primaryColor),
                borderRadius: BorderRadius.circular(16.r),
              ),
            ),
            validator: widget.validator,
          ),
        ),
        SizedBox(height: 6.h),
      ],
    );
  }
}
