import 'package:e_commerce_app/core/route/route.dart';
import 'package:e_commerce_app/core/theme/constant_color.dart';
import 'package:e_commerce_app/core/utils/form_validators.dart';
import 'package:e_commerce_app/core/widget/button/custom_rounded_button.dart';
import 'package:e_commerce_app/core/widget/check_box.dart/check_box_login.dart';
import 'package:e_commerce_app/core/widget/overlay_load/overlay_loading_screen.dart';
import 'package:e_commerce_app/core/widget/text_field/custom_textform_field.dart';
import 'package:e_commerce_app/feature/authentication/widget/auth_screen_wrapper.dart';
import 'package:e_commerce_app/feature/authentication/widget/bottom_text_widget.dart';
import 'package:e_commerce_app/feature/authentication/widget/common_auth_widget.dart';
import 'package:e_commerce_app/feature/authentication/widget/expanded_divider.dart';
import 'package:e_commerce_app/feature/authentication/widget/platform_login_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

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
  bool _isloading = false;

  void login() {
    setState(() {
      _isAlreadyValidate = true;
      _isloading = true;
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
  void dispose() {
    _emailController.dispose();
    _passWordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    return OverlayLoadingScreen(
      isLoading: _isloading,
      child: AuthScreenWrapper(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CommonAuthWidget(
              title: "Welcome Back",
              subtitle: "Sign in to your account",
            ),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  CustomTextformField(
                    fieldKey: "Email",
                    title: "Email Address",
                    controller: _emailController,
                    hintText: "example@gmail.com",
                    prefixIcon: Icon(Icons.email),
                    onChanged: (p0) {
                      validateField();
                    },
                    validator: (p0) {
                      return FormValidators.validateFieldNotEmpty(
                        p0,
                        "Enter a email address",
                      );
                    },
                  ),
                  CustomTextformField(
                    suffixIcon: Icon(Icons.remove_red_eye),
                    fieldKey: "Password",
                    title: "Password",
                    isPassword: true,
                    controller: _passWordController,
                    hintText: "Enter your password",
                    prefixIcon: Icon(Icons.lock),
                    textInputAction: TextInputAction.done,

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
                GestureDetector(
                  onTap: () {
                    context.push(Routes.forgotScreen);
                  },
                  child: Text(
                    "Forgot Password?",
                    style: theme.textTheme.labelLarge?.copyWith(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColors.primaryColor,
                    ),
                  ),
                ),
              ],
            ),
            CustomRoundedButton(onTap: login, title: "Sign In"),
            ExpandedDivider(),
            SizedBox(height: 10.h),
            FamousPlatformLoginWidget(onTapApple: () {}, onTapGoogle: () {}),
            SizedBox(height: 20.h),
            BottomTextWidget(
              textTheme: textTheme,
              tapText: " Sign Up",
              routeText: Routes.signupScreen,
            ),
          ],
        ),
      ),
    );
  }

  SizedBox sizebox() => SizedBox(width: 8.w);
}
