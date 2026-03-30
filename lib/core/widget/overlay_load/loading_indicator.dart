import 'package:e_commerce_app/core/theme/constant_color.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingIndicator {
  static final loadingIndicator = SpinKitCircle(
    color: AppColors.white,
    size: 24.sp,
  );
}
