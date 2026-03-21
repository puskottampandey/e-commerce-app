import 'package:e_commerce_app/core/theme/constant_color.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class BottomTextWidget extends StatelessWidget {
  final String tapText;
  final String routeText;
  const BottomTextWidget({
    super.key,
    required this.textTheme,
    required this.tapText,
    required this.routeText,
  });

  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: "Don't have a account?",
        style: textTheme.bodyMedium?.copyWith(
          fontSize: 14.sp,
          color: AppColors.greySecondaryColor,
          fontWeight: FontWeight.w500,
        ),
        children: [
          TextSpan(
            text: tapText,
            style: textTheme.bodyMedium?.copyWith(
              fontWeight: FontWeight.bold,
              fontSize: 14.sp,
              color: AppColors.primaryColor,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                context.push(routeText);
              },
          ),
        ],
      ),
    );
  }
}
