import 'package:e_commerce_app/core/constant/assets.dart';
import 'package:e_commerce_app/core/theme/constant_color.dart';
import 'package:e_commerce_app/core/utils/form_validators.dart';
import 'package:e_commerce_app/core/widget/button/custom_rounded_button.dart';
import 'package:e_commerce_app/core/widget/check_box.dart/check_box_login.dart';
import 'package:e_commerce_app/core/widget/padding/app_padding.dart';
import 'package:e_commerce_app/core/widget/text_field/custom_textform_field.dart';
import 'package:e_commerce_app/feature/authentication/widget/auth_logo_widget.dart';
import 'package:e_commerce_app/feature/authentication/widget/bottom_text_widget.dart';
import 'package:e_commerce_app/feature/authentication/widget/expanded_divider.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreenWidget extends StatefulWidget {
  const LoginScreenWidget({super.key});

  @override
  State<LoginScreenWidget> createState() => _LoginScreenWidgetState();
}

class _LoginScreenWidgetState extends State<LoginScreenWidget> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passWordController = TextEditingController();
  bool _isAlreadyValidate = false;
  bool _rememberMe = false;
  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  void login() {
    setState(() {
      _isAlreadyValidate = true;
    });
    if (_formKey.currentState!.validate()) {
      FocusScope.of(context).unfocus();
    }
  }

  void validateField() {
    if (_isAlreadyValidate) {
      _formKey.currentState!.validate();
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    return Scaffold(
      appBar: AppBar(backgroundColor: AppColors.white),
      body: SingleChildScrollView(
        child: AppPadding(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(Assets.appIcons, height: 100.h),
              Text(
                "Welcome Back",
                style: theme.textTheme.displayMedium?.copyWith(
                  color: AppColors.secondaryBlack,
                  fontWeight: FontWeight.bold,
                  fontSize: 30.sp,
                ),
              ),
              Text(
                "Sign in to your account",
                style: textTheme.bodyMedium?.copyWith(
                  color: AppColors.greySecondaryColor,
                  fontSize: 14.sp,
                ),
              ),
              SizedBox(height: 40.h),

              Form(
                key: _formKey,
                child: Column(
                  children: [
                    CustomTextformField(
                      fieldKey: "Email",
                      title: "Email Address",
                      controller: _emailController,
                      hintText: "example@gmail.com",
                      onChanged: (p0) {
                        if (_isAlreadyValidate) {
                          _formKey.currentState!.validate();
                        }
                      },
                      validator: (p0) {
                        return FormValidators.validateFieldNotEmpty(
                          p0,
                          "Enter a email address",
                        );
                      },
                    ),
                    SizedBox(height: 10.h),
                    CustomTextformField(
                      suffixIcon: Icon(Icons.remove_red_eye),
                      fieldKey: "Password",
                      title: "Password",
                      isPassword: true,
                      controller: _passWordController,
                      hintText: "Enter your password",
                      onChanged: (p0) {
                        validateField();
                      },
                      validator: (p0) {
                        return FormValidators.validateFieldNotEmpty(
                          p0,
                          "Enter a password",
                        );
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CheckBoxLogin(
                    onChange: (value) {
                      setState(() {
                        _rememberMe = value;
                      });
                    },
                    checkBoxText: "Remember me",
                  ),
                  Text(
                    "Forgot Password?",
                    style: theme.textTheme.labelLarge?.copyWith(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColors.primaryColor,
                    ),
                  ),
                ],
              ),
              CustomRoundedButton(onTap: login, title: "Sign in"),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ExpandedDivider(),
                  sizebox(),
                  Text(
                    "Or continue with ",
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: AppColors.greyverylight,
                    ),
                  ),
                  sizebox(),
                  ExpandedDivider(),
                ],
              ),
              SizedBox(height: 20.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  AuthLogoWidget(
                    authLogo: Assets.googleLogo,
                    authName: "Google",
                    onTap: () {},
                  ),
                  AuthLogoWidget(
                    authLogo: Assets.appleLogo,
                    authName: "Apple",
                    onTap: () {},
                  ),
                ],
              ),
              SizedBox(height: 30.h),
              BottomTextWidget(textTheme: textTheme),
            ],
          ),
        ),
      ),
    );
  }

  SizedBox sizebox() => SizedBox(width: 8.w);
}
