import 'package:e_commerce_app/core/utils/regex.dart';

class FormValidators {
  static String? validateEmail(String? val, [bool supportEmpty = false]) {
    if (supportEmpty && (val == null || val.isEmpty)) {
      return null;
    } else if (val == null) {
      return "Enter a email address";
    } else if (val.isEmpty) {
      return "Enter a email address";
    } else if (Regex.emailRegex.hasMatch(val)) {
      return null;
    } else {
      return "Enter a email address";
    }
  }

  static String? validateFieldNotEmpty(String? val, String fieldName) {
    if (val == null) {
      return fieldName;
    } else if (val.isEmpty) {
      return fieldName;
    } else {
      return null;
    }
  }

  static String? validatePassword(
    String? val, {
    String? label,
    String? oldPassword,
  }) {
    if (val == null) {
      return "Enter a password";
    } else if (val.isEmpty) {
      return "Enter a password";
    } else {
      return "Enter a Password";
    }

    // if (oldPassword != null && val == oldPassword) {
    //   return "Current Password and New Password should be different";
    // } else if (Regex.passwordRegex.hasMatch(val)) {
    //   return null;
    // } else {
    //   return "password is not strong";
    // }
  }

  static String? validateConfirmPassword(
    String? val,
    String? newPassword, {
    String? oldPassword,
    String? label,
  }) {
    if (val == null) {
      return "Enter a password";
    } else if (val.isEmpty) {
      return "Enter a password";
    } else if (Regex.passwordRegex.hasMatch(val)) {
      if (oldPassword != null && val == oldPassword) {
        return "Enter a password";
      }

      if (val == newPassword) {
        return null;
      } else {
        return "Enter a password";
      }
    } else {
      return "Enter a password";
    }
  }
}
