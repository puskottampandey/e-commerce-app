import 'package:e_commerce_app/core/route/route.dart';
import 'package:e_commerce_app/core/theme/constant_color.dart';
import 'package:e_commerce_app/core/widget/button/custom_rounded_button.dart';
import 'package:e_commerce_app/core/widget/padding/app_padding.dart';
import 'package:e_commerce_app/feature/startup/bloc/onboarding_bloc.dart';
import 'package:e_commerce_app/feature/startup/bloc/onboarding_event.dart';
import 'package:e_commerce_app/feature/startup/bloc/onboarding_screen_model.dart';
import 'package:e_commerce_app/feature/startup/bloc/onboarding_state.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class OnboardingWidget extends StatefulWidget {
  const OnboardingWidget({super.key});

  @override
  State<OnboardingWidget> createState() => _OnboardingWidgetState();
}

class _OnboardingWidgetState extends State<OnboardingWidget> {
  PageController controller = PageController(initialPage: 0);
  double animationProgress = 1;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      final user = FirebaseAuth.instance.currentUser;
      if (user != null) {
        context.go(Routes.homeScreen);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    return BlocBuilder<OnboardingBloc, OnboardingState>(
      buildWhen: (previous, current) => previous.pageIndex != current.pageIndex,
      builder: (context, state) {
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
                      onTap: () {
                        context.go(Routes.loginScreen);
                      },
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
                  Expanded(
                    child: PageView.builder(
                      itemCount: onBoardingScreen.length,
                      controller: controller,
                      onPageChanged: (int index) {
                        context.read<OnboardingBloc>().add(
                          OnboardingEvent(pageChangedIndex: index),
                        );
                      },
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
                  ),
                  // PageViewBuilder(controller: controller, textTheme: textTheme),
                  SizedBox(height: 20.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Stack(
                        alignment: AlignmentGeometry.center,
                        children: [
                          SizedBox(
                            height: 42,
                            width: 42,
                            child: TweenAnimationBuilder(
                              tween: Tween<double>(
                                begin: 0,
                                end: state.progress,
                              ),
                              duration: const Duration(milliseconds: 500),
                              builder: (context, value, child) =>
                                  CircularProgressIndicator(
                                    value: value,
                                    strokeWidth: 4,
                                    backgroundColor:
                                        AppColors.primarylightColor,
                                    color: AppColors.primaryColor,
                                  ),
                            ),
                          ),
                          Text.rich(
                            TextSpan(
                              text: state.currentStep.toString(),
                              style: textTheme.labelLarge?.copyWith(
                                color: AppColors.primaryColor,
                                fontSize: 16.sp,
                              ),
                              children: [
                                TextSpan(
                                  text: "/${state.totalSteps}",
                                  style: textTheme.labelLarge?.copyWith(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12.sp,
                                    color: AppColors.primarylightColor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      CustomRoundedButton(
                        title: state.pageIndex == 2
                            ? "Get Started"
                            : "Continue",
                        onTap: () {
                          if (state.pageIndex == 2) {
                            context.go(Routes.loginScreen);
                          }
                          controller.nextPage(
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.easeIn,
                          );
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
