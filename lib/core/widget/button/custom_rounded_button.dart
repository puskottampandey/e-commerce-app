import 'package:e_commerce_app/core/theme/constant_color.dart';
import 'package:e_commerce_app/core/widget/overlay_load/loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomRoundedButton extends StatefulWidget {
  final Widget? prefixIcon;
  final Widget? sufixIcon;
  final void Function()? onTap;
  final String title;
  final bool isLoading;
  const CustomRoundedButton({
    super.key,
    this.prefixIcon,
    this.sufixIcon,
    required this.onTap,
    required this.title,
    this.isLoading = false,
  });

  @override
  State<CustomRoundedButton> createState() => _CustomRoundedButtonState();
}

class _CustomRoundedButtonState extends State<CustomRoundedButton> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox(
      // height: .h,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 0, vertical: 14.h),
        child: Material(
          elevation: 0,
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.circular(32.r),
          child: InkWell(
            borderRadius: BorderRadius.circular(32.r),
            onTap: widget.isLoading ? null : widget.onTap,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.h),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(32.r),
                border: Border.all(color: theme.primaryColor),
              ),
              child: Center(
                child: widget.isLoading
                    ? LoadingIndicator.loadingIndicator
                    : Row(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          if (widget.prefixIcon != null)
                            Row(
                              children: [
                                Icon(
                                  Icons.sports_basketball,
                                  color: AppColors.white,
                                ),
                                SizedBox(width: 2.h),
                              ],
                            ),
                          Text(
                            widget.title,
                            style: theme.textTheme.displaySmall?.copyWith(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.bold,
                              color: AppColors.white,
                            ),
                          ),
                          if (widget.sufixIcon != null)
                            Row(
                              children: [
                                Icon(
                                  Icons.sports_basketball,
                                  color: AppColors.white,
                                ),
                                SizedBox(width: 2.h),
                              ],
                            ),
                        ],
                      ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
