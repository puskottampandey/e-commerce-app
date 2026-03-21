import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppPadding extends StatelessWidget {
  final Widget child;
  final double horizontalPadding;
  final double verticalPadding;
  const AppPadding({
    super.key,
    required this.child,
    this.horizontalPadding = 16,
    this.verticalPadding = 4,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.symmetric(
        horizontal: horizontalPadding.w,
        vertical: verticalPadding.h,
      ),
      child: child,
    );
  }
}
