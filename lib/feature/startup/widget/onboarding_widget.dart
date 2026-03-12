import 'package:e_commerce_app/core/constant/assets.dart';
import 'package:e_commerce_app/core/theme/constant_color.dart';
import 'package:e_commerce_app/core/widget/app_padding.dart';
import 'package:e_commerce_app/feature/startup/bloc/onboarding_screen_model.dart';
import 'package:e_commerce_app/feature/startup/widget/pageview_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingWidget extends StatefulWidget {
  const OnboardingWidget({super.key});

  @override
  State<OnboardingWidget> createState() => _OnboardingWidgetState();
}

class _OnboardingWidgetState extends State<OnboardingWidget> {
  PageController controller = PageController(initialPage: 0);
  int pageChangeIndex = 0;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: AppPadding(
          child: Column(
            children: [
              Align(
                alignment: AlignmentGeometry.topEnd,
                child: InkWell(
                  autofocus: true,
                  onTap: () {},
                  child: Text(
                    "Skip",
                    style: textTheme.bodySmall?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: AppColors.primaryColor,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30.h),
              PageViewBuilder(controller: controller, textTheme: textTheme),
            ],
          ),
        ),
      ),
    );
  }
}
