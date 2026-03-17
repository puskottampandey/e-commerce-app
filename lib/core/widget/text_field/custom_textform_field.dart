import 'package:e_commerce_app/core/theme/constant_color.dart';
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
  final Function(String)? onChanged;
  final Widget? suffixIcon;
  final bool isPassword;
  final bool isneeded;
  final Widget? prefixIcon;
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
    this.onChanged,
    this.suffixIcon,
    this.isPassword = false,
    this.isneeded = true,
    this.prefixIcon,
  });

  @override
  State<CustomTextformField> createState() => _CustomTextformFieldState();
}

class _CustomTextformFieldState extends State<CustomTextformField> {
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text.rich(
          TextSpan(
            text: widget.title,
            style: theme.textTheme.displaySmall?.copyWith(
              fontSize: 14.sp,
              color: AppColors.greySecondaryColor,
            ),
            children: [
              TextSpan(
                text: widget.isneeded ? " *" : "",
                style: theme.textTheme.displaySmall?.copyWith(
                  fontSize: 14.sp,
                  color: AppColors.red,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 4.h),
        Material(
          elevation: 0.0,
          color: Colors.transparent,
          child: TextFormField(
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
            cursorErrorColor: AppColors.red,
            obscureText: widget.isPassword ? _obscureText : false,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(
                vertical: 8.h,
                horizontal: 10.w,
              ),
              suffixIcon: widget.isPassword
                  ? IconButton(
                      onPressed: () {
                        setState(() {
                          _obscureText = !_obscureText;
                        });
                      },
                      icon: Icon(
                        _obscureText ? Icons.visibility_off : Icons.visibility,
                        color: AppColors.greyverylight,
                      ),
                    )
                  : null,
              prefixIcon: widget.prefixIcon,
              errorMaxLines: 2,
              errorStyle: theme.textTheme.bodySmall?.copyWith(
                color: AppColors.red,
              ),
              floatingLabelAlignment: FloatingLabelAlignment.start,
              fillColor: AppColors.textfilledColor,
              filled: true,
              hintText: widget.hintText,
              hintStyle: textTheme.bodyMedium?.copyWith(
                color: AppColors.greyverylight,
              ),
              errorBorder: OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.red),
                borderRadius: BorderRadius.circular(8.r),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.primaryColor),
                borderRadius: BorderRadius.circular(8.r),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: AppColors.textformfieldBorderColor,
                ),
                borderRadius: BorderRadius.circular(8.r),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.red),
                borderRadius: BorderRadius.circular(8.r),
              ),
              disabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: AppColors.trasparentColor,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(8.r),
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.primaryColor),
                borderRadius: BorderRadius.circular(8.r),
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
