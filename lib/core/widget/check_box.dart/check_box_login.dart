import 'package:e_commerce_app/core/theme/constant_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CheckBoxLogin extends StatefulWidget {
  final String checkBoxText;
  const CheckBoxLogin({super.key, required this.checkBoxText});

  @override
  State<CheckBoxLogin> createState() => _CheckBoxLoginState();
}

class _CheckBoxLoginState extends State<CheckBoxLogin> {
  bool _value = true;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Checkbox(
          checkColor: AppColors.primaryColor,
          activeColor: AppColors.textformfieldBorderColor,
          value: false,
          visualDensity: VisualDensity.compact,

          side: BorderSide(width: 2, color: AppColors.textformfieldBorderColor),
          onChanged: (value) {},
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            "Remember me",
            style: theme.textTheme.displayMedium?.copyWith(
              fontSize: 12.sp,
              color: AppColors.greySecondaryColor,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }
}
