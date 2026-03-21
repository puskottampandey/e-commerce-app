import 'package:e_commerce_app/core/constant/assets.dart';
import 'package:e_commerce_app/core/theme/constant_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoriesListWidget extends StatelessWidget {
  const CategoriesListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(_listrowtext.length, (int index) {
          return Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 6.h, horizontal: 8.w),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.r),
                ),
                child: CircleAvatar(
                  radius: 28.r,
                  backgroundColor: AppColors.greybackgroundColor,
                  child: Image.asset(_listrowtext[index].image, height: 30.h),
                ),
              ),
              Text(
                _listrowtext[index].title,
                style: theme.textTheme.bodySmall?.copyWith(
                  fontWeight: FontWeight.w500,
                  fontSize: 12.sp,
                ),
              ),
            ],
          );
        }),
      ),
    );
  }
}

class ImageTextModel {
  final String image;
  final String title;
  ImageTextModel({required this.image, required this.title});
}

List<ImageTextModel> _listrowtext = [
  ImageTextModel(image: Assets.smartphone, title: "Phone"),
  ImageTextModel(image: Assets.laptop, title: "laptop"),
  ImageTextModel(image: Assets.watch, title: "Watch"),
  ImageTextModel(image: Assets.headPhone, title: "Audio"),
  ImageTextModel(image: Assets.gaming, title: "Accessories"),
];
