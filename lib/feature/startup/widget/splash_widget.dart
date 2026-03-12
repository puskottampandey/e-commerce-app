import 'package:e_commerce_app/core/constant/assets.dart';
import 'package:e_commerce_app/core/route/route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class SplashWidget extends StatefulWidget {
  const SplashWidget({super.key});

  @override
  State<SplashWidget> createState() => _SplashWidgetState();
}

class _SplashWidgetState extends State<SplashWidget> {
  void _navigate() async {
    await Future.delayed(const Duration(seconds: 2)).then((value) {
      if (!mounted) return;
      context.go(Routes.onBoardingScreen);
    });
  }

  @override
  void initState() {
    super.initState();
    _navigate();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [Center(child: Image.asset(Assets.appIcon, width: 200.w))],
      ),
    );
  }
}
