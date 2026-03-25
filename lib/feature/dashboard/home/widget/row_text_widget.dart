import 'package:e_commerce_app/core/theme/constant_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RowTextWidget extends StatelessWidget {
  final String rightText;
  final String leftText;
  final Function()? ontap;

  const RowTextWidget({
    super.key,
    required this.theme,
    required this.rightText,
    required this.leftText,
    this.ontap,
  });

  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            leftText,
            style: theme.textTheme.bodyMedium?.copyWith(
              fontWeight: FontWeight.bold,
              fontSize: 20.sp,
            ),
          ),

          InkWell(
            onTap: ontap,
            child: Row(
              children: [
                Text(
                  rightText,
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: AppColors.greySecondaryColor,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 4.sp),
                CircleAvatar(
                  radius: 12.r,
                  backgroundColor: AppColors.white,
                  child: Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: AppColors.black,
                    size: 10.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
