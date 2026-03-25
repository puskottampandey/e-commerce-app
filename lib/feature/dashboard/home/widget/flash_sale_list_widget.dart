import 'package:e_commerce_app/core/constant/assets.dart';
import 'package:e_commerce_app/core/theme/constant_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FlashSaleListWidget extends StatefulWidget {
  const FlashSaleListWidget({super.key});

  @override
  State<FlashSaleListWidget> createState() => _FlashSaleListWidgetState();
}

class _FlashSaleListWidgetState extends State<FlashSaleListWidget> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(5, (int index) {
          return Column(
            children: [
              Container(
                width: 160.w,
                margin: EdgeInsets.fromLTRB(0.w, 10.h, 10.w, 10.h),
                padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(16.r),
                ),
                child: Container(
                  padding: EdgeInsets.symmetric(
                    vertical: 10.h,
                    horizontal: 10.w,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.greybackgroundColor,
                    borderRadius: BorderRadius.circular(16.r),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Image.asset(Assets.headPhone, height: 60.h),
                      ),
                      SizedBox(height: 6.h),
                      Text(
                        "Sony WH-1000XM5 Wireless Headphones",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.bodyMedium?.copyWith(
                          fontSize: 12.sp,
                          color: AppColors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 6.h),
                      Row(
                        children: [
                          Icon(
                            Icons.star_border,
                            size: 14.sp,
                            fontWeight: FontWeight.bold,
                            color: AppColors.goldenColor,
                          ),
                          Text('4.8'),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "Rs.5000",
                            style: theme.textTheme.bodySmall?.copyWith(
                              fontSize: 14.sp,
                              color: AppColors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          SizedBox(width: 6.h),
                          Text(
                            "Rs.8000",
                            style: theme.textTheme.bodySmall?.copyWith(
                              decoration: TextDecoration.lineThrough,
                              decorationColor: AppColors.greySecondaryColor,
                              fontSize: 12.sp,
                              color: AppColors.greySecondaryColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        }),
      ),
    );
  }
}
