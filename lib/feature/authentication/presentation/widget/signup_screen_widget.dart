import 'package:e_commerce_app/core/route/route.dart';
import 'package:e_commerce_app/core/utils/form_validators.dart';
import 'package:e_commerce_app/core/widget/button/custom_rounded_button.dart';
import 'package:e_commerce_app/core/widget/text_field/custom_textform_field.dart';
import 'package:e_commerce_app/feature/authentication/presentation/widget/auth_screen_wrapper.dart';
import 'package:e_commerce_app/feature/authentication/presentation/widget/bottom_text_widget.dart';
import 'package:e_commerce_app/feature/authentication/presentation/widget/common_auth_widget.dart';
import 'package:e_commerce_app/feature/authentication/presentation/widget/expanded_divider.dart';
import 'package:e_commerce_app/feature/authentication/presentation/widget/platform_login_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class SignupScreenWidget extends StatefulWidget {
  const SignupScreenWidget({super.key});

  @override
  State<SignupScreenWidget> createState() => _SignupScreenWidgetState();
}

class _SignupScreenWidgetState extends State<SignupScreenWidget> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  bool _isAlreadyValidate = false;

  void signUp() {
    context.go(Routes.homeScreen);
    setState(() {
      _isAlreadyValidate = true;
    });
    if (_formKey.currentState!.validate()) {
      Focus.of(context).unfocus();
    }
  }

  void validate() {
    if (_isAlreadyValidate) {
      _formKey.currentState!.validate();
    }
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    return AuthScreenWrapper(
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CommonAuthWidget(
            title: "Create Account",
            subtitle:
                "Join our community and start your shopping journey today",
          ),
          Form(
            key: _formKey,
            child: Column(
              children: [
                CustomTextformField(
                  title: "Full Name",
                  controller: _nameController,
                  hintText: "Enter a full name",
                  fieldKey: "name",
                  prefixIcon: Icon(Icons.person),
                  validator: (value) {
                    return FormValidators.validateFieldNotEmpty(
                      value,
                      "Enter full name",
                    );
                  },
                  onChanged: (value) {
                    validate();
                  },
                ),
                CustomTextformField(
                  title: "Email Address",
                  controller: _emailController,
                  hintText: "Enter a email address",
                  fieldKey: "email",
                  prefixIcon: Icon(Icons.email),
                  validator: (value) {
                    return FormValidators.validateFieldNotEmpty(
                      value,
                      "Enter a email address",
                    );
                  },
                  onChanged: (value) {
                    validate();
                  },
                ),
                CustomTextformField(
                  title: "Password",
                  controller: _passwordController,
                  isPassword: true,
                  hintText: "Enter a password",
                  fieldKey: "password",
                  prefixIcon: Icon(Icons.lock),
                  validator: (value) {
                    return FormValidators.validatePassword(value);
                  },
                  onChanged: (value) {
                    validate();
                  },
                ),
                CustomTextformField(
                  title: "Confirm Password",
                  controller: _confirmPasswordController,
                  hintText: "",
                  fieldKey: "confirm password",
                  textInputAction: TextInputAction.done,
                  validator: (value) {
                    return FormValidators.validateConfirmPassword(
                      value,
                      _passwordController.text,
                    );
                  },
                  onChanged: (value) {
                    validate();
                  },
                ),
              ],
            ),
          ),
          CustomRoundedButton(onTap: signUp, title: "Sign Up"),
          ExpandedDivider(),
          SizedBox(height: 8.h),
          FamousPlatformLoginWidget(onTapApple: () {}, onTapGoogle: () {}),
          SizedBox(height: 8.h),
          BottomTextWidget(
            textTheme: textTheme,
            tapText: "Sign In",
            routeText: Routes.loginScreen,
          ),
        ],
      ),
    );
  }
}
