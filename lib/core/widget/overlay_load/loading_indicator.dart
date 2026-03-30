import 'package:e_commerce_app/core/theme/constant_color.dart';
// ignore: implementation_imports
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingIndicator {
  static final SizedBox loadingIndicator = SizedBox(
    height: 40,
    child: SpinKitCircle(color: AppColors.white, size: 30.sp),
  );
}
