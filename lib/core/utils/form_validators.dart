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
    if (val == null || val.isEmpty) {
      return "Enter a password";
    }

    if (oldPassword != null && val == oldPassword) {
      return "Current Password and New Password should be different";
    }

    List<String> errors = [];

    if (val.length < 8) {
      errors.add("• At least 8 characters");
    }
    if (!Regex.upperCaseRegex.hasMatch(val)) {
      errors.add("• One uppercase letter");
    }
    if (!Regex.lowerCaseRegex.hasMatch(val)) {
      errors.add("• One lowercase letter");
    }
    if (!Regex.numberonlyRegex.hasMatch(val)) {
      errors.add("• One number");
    }
    if (!Regex.oneSpecialRegex.hasMatch(val)) {
      errors.add("• One special character");
    }

    if (errors.isNotEmpty) {
      return "Password must contain:\n${errors.join('\n')}";
    }

    return null;
  }

  static String? validateConfirmPassword(
    String? confirmPassword,
    String? newPassword,
  ) {
    if (confirmPassword == null || confirmPassword.isEmpty) {
      return "Please confirm your password";
    }

    if (confirmPassword != newPassword) {
      return "Passwords do not match";
    }

    return null; // ✅ No error when matched
  }
  // static String? validateConfirmPassword(
  //   String? val,
  //   String? newPassword, {
  //   String? oldPassword,
  //   String? label,
  // }) {
  //   if (val == null) {
  //     return "Enter a password";
  //   } else if (val.isEmpty) {
  //     return "Enter a password";
  //   } else if (Regex.passwordRegex.hasMatch(val)) {
  //     if (oldPassword != null && val == oldPassword) {
  //       return "Enter a password";
  //     }

  //     if (val == newPassword) {
  //       return null;
  //     } else {
  //       return "Enter a password";
  //     }
  //   } else {
  //     return "Enter a password";
  //   }
  // }
}
  // static String? validatePassword(
  //   String? val, {
  //   String? label,
  //   String? oldPassword,
  // }) {
  //   if (val == null) {
  //     return "Enter a password";
  //   } else if (val.isEmpty) {
  //     return "Enter a password";
  //   }

  //   if (oldPassword != null && val == oldPassword) {
  //     return "Current Password and New Password should be different";
  //   } else if (Regex.passwordRegex.hasMatch(val)) {
  //     return null;
  //   } else {
  //     return "password is not strong";
  //   }
  // }