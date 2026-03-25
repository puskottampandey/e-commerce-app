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
                padding: EdgeInsets.symmetric(vertical: 4.h, horizontal: 4.w),
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(16.r),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      alignment: AlignmentGeometry.topRight,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                            vertical: 10.h,
                            horizontal: 10.w,
                          ),
                          decoration: BoxDecoration(
                            color: AppColors.lightgreybackgroundColor,
                            borderRadius: BorderRadius.circular(12.r),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Center(
                                child: Image.asset(
                                  Assets.headPhone,
                                  height: 70.h,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          right: 4.w,
                          top: 4.h,
                          child: Container(
                            padding: EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppColors.white,
                            ),
                            child: Icon(
                              Icons.favorite_border,
                              color: AppColors.greySecondaryColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 6.h),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 6.w,
                        vertical: 4.h,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Sony WH-1000XM5 Wireless Headphones",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: theme.textTheme.bodyMedium?.copyWith(
                              fontSize: 14.sp,
                              color: AppColors.black,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height: 4.h),
                          Text(
                            "Rs. 5000",
                            style: theme.textTheme.bodySmall?.copyWith(
                              fontSize: 16.sp,
                              color: AppColors.primaryColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                "Rs. 8000",
                                style: theme.textTheme.bodySmall?.copyWith(
                                  decoration: TextDecoration.lineThrough,
                                  decorationColor: AppColors.greySecondaryColor,
                                  fontSize: 12.sp,
                                  color: AppColors.greySecondaryColor,
                                ),
                              ),
                              SizedBox(width: 6.w),
                              Text(
                                "40%Off",
                                style: theme.textTheme.bodySmall?.copyWith(
                                  fontSize: 10.sp,
                                  color: AppColors.red,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        }),
      ),
    );
  }
}
