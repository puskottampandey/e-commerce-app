import 'package:e_commerce_app/core/theme/constant_color.dart';
import 'package:e_commerce_app/feature/startup/bloc/onboarding_screen_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PageViewBuilder extends StatelessWidget {
  const PageViewBuilder({
    super.key,
    required this.controller,
    required this.textTheme,
  });

  final PageController controller;
  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PageView.builder(
        itemCount: onBoardingScreen.length,
        controller: controller,
        itemBuilder: (context, index) {
          final data = onBoardingScreen[index];
          return Column(
            children: [
              Image.asset(data.image),
              SizedBox(height: 10.h),
              Text(
                data.title,
                textAlign: TextAlign.center,
                style: textTheme.displayMedium,
              ),
              SizedBox(height: 10.h),
              Text(
                data.description,
                textAlign: TextAlign.center,
                style: textTheme.bodyLarge?.copyWith(
                  color: AppColors.greylight,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
