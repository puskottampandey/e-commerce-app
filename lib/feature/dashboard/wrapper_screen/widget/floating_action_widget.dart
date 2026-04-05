import 'package:e_commerce_app/core/constant/assets.dart';
import 'package:e_commerce_app/core/route/route.dart';
import 'package:e_commerce_app/core/theme/constant_color.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class FloatingActionWidget extends StatelessWidget {
  const FloatingActionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      elevation: 0,
      backgroundColor: AppColors.primaryColor,
      onPressed: () async {
        await FirebaseAuth.instance.signOut();
        context.go(Routes.loginScreen);
        // context.push(Routes.chatScreen);
      },
      child: Image.asset(Assets.chatIcon, color: AppColors.white, height: 20.h),
    );
  }
}
