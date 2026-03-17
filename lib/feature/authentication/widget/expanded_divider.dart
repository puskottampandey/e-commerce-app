import 'package:e_commerce_app/core/theme/constant_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ExpandedDivider extends StatelessWidget {
  const ExpandedDivider({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Expanded(child: Divider(color: AppColors.textformfieldBorderColor)),
        sizebox(),
        Text(
          "Or continue with ",
          style: textTheme.bodyMedium?.copyWith(color: AppColors.greyverylight),
        ),
        sizebox(),
        Expanded(child: Divider(color: AppColors.textformfieldBorderColor)),
      ],
    );
  }

  SizedBox sizebox() => SizedBox(width: 8.w);
}
