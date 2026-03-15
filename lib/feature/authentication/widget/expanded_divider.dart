import 'package:e_commerce_app/core/theme/constant_color.dart';
import 'package:flutter/material.dart';

class ExpandedDivider extends StatelessWidget {
  const ExpandedDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(child: Divider(color: AppColors.textformfieldBorderColor));
  }
}
