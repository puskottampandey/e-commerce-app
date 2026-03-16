import 'package:e_commerce_app/core/utils/form_validators.dart';
import 'package:e_commerce_app/core/widget/button/custom_rounded_button.dart';
import 'package:e_commerce_app/core/widget/text_field/custom_textform_field.dart';
import 'package:e_commerce_app/feature/authentication/widget/auth_screen_wrapper.dart';
import 'package:e_commerce_app/feature/authentication/widget/bottom_text_widget.dart';
import 'package:e_commerce_app/feature/authentication/widget/common_auth_widget.dart';
import 'package:e_commerce_app/feature/authentication/widget/expanded_divider.dart';
import 'package:e_commerce_app/feature/authentication/widget/platform_login_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
                  hintText: "Puskottam Pandey",
                  fieldKey: "name",
                  textInputAction: TextInputAction.next,
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
                  textInputAction: TextInputAction.next,
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
                  textInputAction: TextInputAction.next,
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
          CustomRoundedButton(onTap: signUp, title: "Sign up"),
          ExpandedDivider(),
          SizedBox(height: 10.h),
          FamousPlatformLoginWidget(onTapApple: () {}, onTapGoogle: () {}),
          SizedBox(height: 20.h),
          BottomTextWidget(textTheme: textTheme),
        ],
      ),
    );
  }
}
