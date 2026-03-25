import 'dart:async';

import 'package:e_commerce_app/core/theme/constant_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FlashSaleContainerTimer extends StatefulWidget {
  const FlashSaleContainerTimer({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _FlashSaleContainerTimerState createState() =>
      _FlashSaleContainerTimerState();
}

class _FlashSaleContainerTimerState extends State<FlashSaleContainerTimer> {
  late Timer _timer;
  final DateTime saleEndTime = DateTime.now().add(Duration(hours: 2));
  Duration remaining = Duration();
  @override
  void initState() {
    super.initState();
    updateTimer();
    _timer = Timer.periodic(Duration(seconds: 1), (_) => updateTimer());
  }

  void updateTimer() {
    final diff = saleEndTime.difference(DateTime.now());
    setState(() {
      remaining = diff.isNegative ? Duration.zero : diff;
    });
  }

  String formatTwo(int n) => n.toString().padLeft(2, '0');

  String format(Duration d) =>
      "${formatTwo(d.inHours)} : ${formatTwo(d.inMinutes.remainder(60))} : ${formatTwo(d.inSeconds.remainder(60))}";
  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
      decoration: BoxDecoration(
        gradient: AppColors.flashSaleGradientColor,
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.flash_on, color: AppColors.white),
          SizedBox(width: 8.w),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 4.w),
            child: Text(
              "Flash Sale Ends In ${format(remaining)}",
              style: theme.textTheme.bodyMedium?.copyWith(
                color: AppColors.white,
                fontWeight: FontWeight.bold,
                fontFeatures: [FontFeature.tabularFigures()],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
