import 'package:e_commerce_app/core/constant/assets.dart';
import 'package:e_commerce_app/core/theme/constant_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CommonAuthWidget extends StatelessWidget {
  final String title;
  final String subtitle;

  const CommonAuthWidget({
    super.key,
    required this.subtitle,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    return Column(
      children: [
        Image.asset(Assets.appIcons, height: 100.h),
        Text(
          title,
          style: theme.textTheme.displayMedium?.copyWith(
            color: AppColors.secondaryBlack,
            fontWeight: FontWeight.bold,
            fontSize: 30.sp,
          ),
        ),
        Text(
          subtitle,
          textAlign: TextAlign.center,
          style: textTheme.bodyMedium?.copyWith(
            color: AppColors.greySecondaryColor,

            fontSize: 14.sp,
          ),
        ),
        SizedBox(height: 40.h),
      ],
    );
  }
}
