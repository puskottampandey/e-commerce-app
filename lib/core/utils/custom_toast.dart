import 'package:e_commerce_app/core/theme/constant_color.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';

class CustomToast {
  static void successToast({required String msg}) {
    cancelToast();
    Fluttertoast.showToast(
      msg: msg,
      toastLength: Toast.LENGTH_LONG,
      fontSize: 14.sp,
      gravity: ToastGravity.BOTTOM,
      backgroundColor: AppColors.greenColor,
      textColor: AppColors.white,
    );
  }

  static void errorToast({required String msg}) {
    cancelToast();
    Fluttertoast.showToast(
      msg: msg,
      toastLength: Toast.LENGTH_LONG,
      fontSize: 16.sp,
      gravity: ToastGravity.BOTTOM,
      backgroundColor: AppColors.red,
      textColor: AppColors.white,
    );
  }

  static void backendMessage({required String msg}) {
    cancelToast();
    Fluttertoast.showToast(
      msg: msg,
      toastLength: Toast.LENGTH_LONG,
      fontSize: 16.sp,
      gravity: ToastGravity.BOTTOM,
      backgroundColor: AppColors.black.withValues(alpha: 0.2),
      textColor: AppColors.white,
    );
  }

  static void cancelToast() {
    Fluttertoast.cancel();
  }
}
