import 'package:e_commerce_app/core/theme/constant_color.dart';
import 'package:e_commerce_app/core/widget/padding/app_padding.dart';
import 'package:flutter/material.dart';

class DashboardScaffoldWrapper extends StatefulWidget {
  final Widget body;

  const DashboardScaffoldWrapper({super.key, required this.body});

  @override
  State<DashboardScaffoldWrapper> createState() =>
      _DashboardScaffoldWrapperState();
}

class _DashboardScaffoldWrapperState extends State<DashboardScaffoldWrapper> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackgroundColor,
      body: AppPadding(child: widget.body),
    );
  }
}
