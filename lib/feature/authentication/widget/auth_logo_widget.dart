import 'package:e_commerce_app/core/constant/assets.dart' show Assets;
import 'package:e_commerce_app/core/theme/constant_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AuthLogoWidget extends StatelessWidget {
  final String authName;
  final String authLogo;
  final Function()? onTap;
  const AuthLogoWidget({
    super.key,
    required this.authName,
    required this.authLogo,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(16.r),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 30.w),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.r),
          border: Border.all(
            color: AppColors.textformfieldBorderColor,
            width: 1,
          ),
        ),
        child: Row(
          children: [
            Image.asset(authLogo, height: 16.h),
            SizedBox(width: 6.w),
            Text(
              authName,
              style: theme.textTheme.bodyMedium?.copyWith(
                color: AppColors.authTextColor,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
