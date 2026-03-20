import 'package:e_commerce_app/core/constant/assets.dart';
import 'package:e_commerce_app/core/route/route.dart';
import 'package:e_commerce_app/core/theme/constant_color.dart';
import 'package:e_commerce_app/core/widget/text_field/custom_search_field.dart';
import 'package:e_commerce_app/feature/dashboard/wrapper_screen/widget/dashboard_scaffold_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreenWidget extends StatefulWidget {
  const HomeScreenWidget({super.key});

  @override
  State<HomeScreenWidget> createState() => _HomeScreenWidgetState();
}

class _HomeScreenWidgetState extends State<HomeScreenWidget> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return DashboardScaffoldWrapper(
      body: Column(
        children: [
          CustomSearchField(
            controller: TextEditingController(),
            prefixIcon: Icon(Icons.search, color: AppColors.greySecondaryColor),
            hintText: "Search any Product ....",
            fieldKey: "Search",
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
