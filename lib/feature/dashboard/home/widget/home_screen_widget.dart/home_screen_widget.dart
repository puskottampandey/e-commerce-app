import 'package:e_commerce_app/core/theme/constant_color.dart';
import 'package:e_commerce_app/core/widget/padding/app_padding.dart';
import 'package:flutter/material.dart';

class HomeScreenWidget extends StatefulWidget {
  const HomeScreenWidget({super.key});

  @override
  State<HomeScreenWidget> createState() => _HomeScreenWidgetState();
}

class _HomeScreenWidgetState extends State<HomeScreenWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackgroundColor,
      body: AppPadding(
        child: SafeArea(child: Column(children: [Text("hello")])),
      ),
    );
  }
}
