import 'package:e_commerce_app/core/theme/constant_color.dart';
import 'package:e_commerce_app/core/widget/button/custom_rounded_button.dart';
import 'package:e_commerce_app/core/widget/padding/app_padding.dart';
import 'package:e_commerce_app/core/widget/text_field/custom_textform_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreenWidget extends StatefulWidget {
  const LoginScreenWidget({super.key});

  @override
  State<LoginScreenWidget> createState() => _LoginScreenWidgetState();
}

class _LoginScreenWidgetState extends State<LoginScreenWidget> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    return Scaffold(
      appBar: AppBar(backgroundColor: AppColors.scaffoldBackgroundColor),
      body: AppPadding(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Login", style: textTheme.displayMedium),
            SizedBox(height: 20.h),
            CustomTextformField(
              fieldKey: "Email",
              title: "Email Address",
              controller: TextEditingController(),
              hintText: "example@gmail.coms",
            ),
            CustomRoundedButton(onTap: () {}, title: "Login"),
          ],
        ),
      ),
    );
  }
}
