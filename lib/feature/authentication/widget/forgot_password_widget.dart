import 'package:e_commerce_app/core/utils/form_validators.dart';
import 'package:e_commerce_app/core/widget/button/custom_rounded_button.dart';
import 'package:e_commerce_app/core/widget/text_field/custom_textform_field.dart';
import 'package:e_commerce_app/feature/authentication/widget/auth_screen_wrapper.dart';
import 'package:e_commerce_app/feature/authentication/widget/common_auth_widget.dart';
import 'package:flutter/material.dart';

class ForgotPasswordWidget extends StatefulWidget {
  const ForgotPasswordWidget({super.key});

  @override
  State<ForgotPasswordWidget> createState() => _ForgotPasswordWidgetState();
}

class _ForgotPasswordWidgetState extends State<ForgotPasswordWidget> {
  final TextEditingController _forgotController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  bool _isAlreadyValidate = false;

  void sendLink() {
    setState(() {
      _isAlreadyValidate = true;
    });
    if (_formKey.currentState!.validate()) {
      Focus.of(context).unfocus();
    }
  }

  void validateField() {
    if (_isAlreadyValidate) {
      _formKey.currentState!.validate();
    }
  }

  @override
  void dispose() {
    _forgotController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AuthScreenWrapper(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CommonAuthWidget(
            subtitle:
                "Enter your email address to receive a link to reset your password",
            title: "Forgot Password",
          ),
          Form(
            key: _formKey,
            child: Column(
              children: [
                CustomTextformField(
                  title: "Email Address",
                  controller: _forgotController,
                  hintText: "name@example.com",
                  fieldKey: "forgot",
                  prefixIcon: Icon(Icons.email),
                  validator: (value) {
                    return FormValidators.validateFieldNotEmpty(
                      value,
                      "Enter a email address",
                    );
                  },
                  onChanged: (value) {
                    validateField();
                  },
                ),
              ],
            ),
          ),
          CustomRoundedButton(onTap: sendLink, title: "Send Reset Link"),
        ],
      ),
    );
  }
}
