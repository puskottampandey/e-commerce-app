import 'package:e_commerce_app/core/theme/constant_color.dart';
import 'package:e_commerce_app/core/widget/padding/app_padding.dart';
import 'package:flutter/material.dart';

class AuthScreenWrapper extends StatelessWidget {
  final Widget child;
  const AuthScreenWrapper({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: AppColors.white),
      body: SingleChildScrollView(child: AppPadding(child: child)),
    );
  }
}
