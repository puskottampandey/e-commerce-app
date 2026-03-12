import 'package:e_commerce_app/core/constant/assets.dart';
import 'package:e_commerce_app/core/theme/app_theme.dart';
import 'package:e_commerce_app/feature/startup/bloc/onboarding_screen_model.dart';
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
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
          child: Column(
            children: [
              Align(
                alignment: AlignmentGeometry.topEnd,
                child: Text(
                  "Skip",
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurple,
                  ),
                ),
              ),
              SizedBox(height: 30.h),
              Expanded(
                child: PageView.builder(
                  itemCount: onBoardingScreen.length,
                  controller: controller,

                  itemBuilder: (context, index) {
                    final data = onBoardingScreen[index];
                    return Column(
                      children: [
                        Image.asset(Assets.appIcon),
                        Text(
                          data.title,
                          textAlign: TextAlign.center,
                          style: textTheme.displaySmall,
                        ),
                        SizedBox(height: 10.h),
                        Text(
                          data.description,
                          textAlign: TextAlign.center,
                          style: textTheme.bodyLarge,
                        ),
                      ],
                    );
                  },
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.forward, color: Colors.deepPurple),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
