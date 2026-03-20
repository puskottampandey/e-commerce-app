import 'package:e_commerce_app/core/constant/assets.dart';
import 'package:e_commerce_app/core/route/route.dart';
import 'package:e_commerce_app/core/theme/constant_color.dart';
import 'package:e_commerce_app/feature/dashboard/wrapper_screen/model/bottom_navbar_model.dart';
import 'package:e_commerce_app/feature/dashboard/wrapper_screen/widget/floating_action_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class WrapperScreenWidget extends StatefulWidget {
  const WrapperScreenWidget({super.key});

  @override
  State<WrapperScreenWidget> createState() => _HomesScreenWidgetState();
}

class _HomesScreenWidgetState extends State<WrapperScreenWidget> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        actionsPadding: EdgeInsets.symmetric(vertical: 0.h, horizontal: 4.w),
        centerTitle: true,
        title: Text(
          "TechStore",
          style: theme.textTheme.bodyMedium?.copyWith(
            fontSize: 16.sp,
            fontWeight: FontWeight.bold,
            color: AppColors.primaryColor,
          ),
        ),
        backgroundColor: AppColors.scaffoldBackgroundColor,
        leading: CircleAvatar(
          radius: 10.r,
          backgroundColor: AppColors.scaffoldBackgroundColor,
          child: ClipRRect(
            borderRadius: BorderRadiusGeometry.circular(16.r),
            child: Image.asset(Assets.splashIcon, height: 30.h),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              context.push(Routes.notificationScreen);
            },
            icon: Icon(
              Icons.notifications_active,
              color: AppColors.greySecondaryColor,
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 10,
        selectedItemColor: AppColors.primaryColor,
        unselectedItemColor: AppColors.greySecondaryColor,
        backgroundColor: AppColors.white,
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        items: bottomNavItems.map((item) {
          return BottomNavigationBarItem(
            backgroundColor: AppColors.red,
            icon: Icon(item.icon),
            label: item.label,
          );
        }).toList(),
      ),
      floatingActionButton: FloatingActionWidget(),
      body: bottomNavItems[currentIndex].screen,
    );
  }
}
