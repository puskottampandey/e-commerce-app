import 'package:e_commerce_app/core/theme/constant_color.dart';
import 'package:e_commerce_app/core/utils/form_validators.dart';
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
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passWordController = TextEditingController();
  bool _isAlreadyValidate = false;

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
      appBar: AppBar(backgroundColor: AppColors.scaffoldBackgroundColor),
      body: SingleChildScrollView(
        child: AppPadding(
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Login", style: textTheme.displayMedium),
                SizedBox(height: 20.h),
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
                  hintText: "abcd",
                  onChanged: (p0) {
                    print("hello");
                    validateField();
                  },
                  validator: (p0) {
                    return FormValidators.validateFieldNotEmpty(
                      p0,
                      "Enter a password",
                    );
                  },
                ),
                CustomRoundedButton(onTap: login, title: "Login"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
