import 'package:e_commerce_app/core/constant/assets.dart';
import 'package:e_commerce_app/core/theme/constant_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      width: double.infinity,
      height: 120.h,
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24.r),
        gradient: LinearGradient(
          colors: [
            Color(0xff450693),
            Color(0xff6a11cb),
            Color.fromARGB(255, 90, 147, 245),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        boxShadow: [
          BoxShadow(
            color: Color(0xff450693).withValues(alpha: 0.35),
            blurRadius: 18,
            offset: Offset(0, 8),
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 10.w,
                    vertical: 8.h,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white.withValues(alpha: 0.2),
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                  child: Text(
                    "LIMITED OFFER",
                    style: theme.textTheme.bodyMedium?.copyWith(
                      fontSize: 12.sp,
                      color: AppColors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 12.h),
                Text(
                  "Up to 60% OFF",
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: AppColors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 6.h),
                Text(
                  "On Premium Gadgets",
                  style: theme.textTheme.labelLarge?.copyWith(
                    fontSize: 12.sp,
                    color: Colors.white.withValues(alpha: 0.9),
                  ),
                ),
              ],
            ),
          ),
          Image.asset(Assets.headPhone, height: 130.h),
        ],
      ),
    );
  }
}
