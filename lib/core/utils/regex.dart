class Regex {
  static final RegExp emailRegex = RegExp(
    r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
  );
  static final RegExp phoneNumberRegex = RegExp(r'([9][678][0-6][0-9]{7})');
  static final RegExp urlRegex = RegExp(
    r"^((http|https)://)[a-zA-Z0-9-]+(\.[a-zA-Z]{2,})+([a-zA-Z0-9@:%._\+~#?&//=]*)$",
  );
  static final RegExp upperCaseRegex = RegExp(r'[A-Z]');
  static final RegExp lowerCaseRegex = RegExp(r'[a-z]');
  static final RegExp numberonlyRegex = RegExp(r'[0-9]');
  static final RegExp oneSpecialRegex = RegExp(r'[!@#\$&*~%^()_\-+=]');
}
