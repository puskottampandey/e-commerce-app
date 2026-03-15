import 'package:e_commerce_app/core/theme/constant_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CheckBoxLogin extends StatefulWidget {
  final String checkBoxText;
  final ValueChanged<bool> onChange;
  final bool? initialValue;
  const CheckBoxLogin({
    super.key,
    required this.checkBoxText,
    required this.onChange,
    this.initialValue,
  });

  @override
  State<CheckBoxLogin> createState() => _CheckBoxLoginState();
}

class _CheckBoxLoginState extends State<CheckBoxLogin> {
  bool _value = false;
  void changeHandler() {
    setState(() {
      setState(() {
        _value = !_value;
      });
      widget.onChange(_value);
    });
  }

  @override
  void initState() {
    if (widget.initialValue != null) {
      _value = widget.initialValue!;
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Checkbox(
          checkColor: AppColors.primaryColor,
          activeColor: AppColors.textformfieldBorderColor,
          value: _value,
          visualDensity: VisualDensity.compact,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4.r),
          ),
          side: BorderSide(width: 2, color: AppColors.textformfieldBorderColor),
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          onChanged: (value) => changeHandler(),
        ),
        TextButton(
          style: TextButton.styleFrom(
            padding: EdgeInsets.zero, // remove default padding
            minimumSize: Size.zero,
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
          onPressed: changeHandler,
          child: Text(
            "Remember me",
            style: theme.textTheme.displayMedium?.copyWith(
              fontSize: 12.sp,
              color: AppColors.greySecondaryColor,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }
}
