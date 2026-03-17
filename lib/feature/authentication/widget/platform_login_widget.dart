import 'package:e_commerce_app/core/constant/assets.dart';
import 'package:e_commerce_app/feature/authentication/widget/auth_logo_widget.dart';
import 'package:flutter/material.dart';

class FamousPlatformLoginWidget extends StatelessWidget {
  final Function()? onTapGoogle;
  final Function()? onTapApple;

  const FamousPlatformLoginWidget({
    super.key,
    required this.onTapGoogle,
    required this.onTapApple,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        AuthLogoWidget(
          authLogo: Assets.googleLogo,
          authName: "Google",
          onTap: onTapGoogle,
        ),
        AuthLogoWidget(
          authLogo: Assets.appleLogo,
          authName: "Apple",
          onTap: onTapGoogle,
        ),
      ],
    );
  }
}
