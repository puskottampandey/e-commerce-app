import 'package:e_commerce_app/core/route/route.dart';
import 'package:e_commerce_app/core/theme/constant_color.dart';
import 'package:e_commerce_app/core/widget/text_field/custom_search_field.dart';
import 'package:e_commerce_app/feature/dashboard/home/widget/banner_widget.dart';
import 'package:e_commerce_app/feature/dashboard/home/widget/categories_list_widget.dart';
import 'package:e_commerce_app/feature/dashboard/home/widget/flash_sale_list_widget.dart';
import 'package:e_commerce_app/feature/dashboard/home/widget/flash_sale_time_widget.dart';
import 'package:e_commerce_app/feature/dashboard/home/widget/row_text_widget.dart';
import 'package:e_commerce_app/feature/dashboard/wrapper_screen/widget/dashboard_scaffold_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

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
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomSearchField(
              readonly: true,
              controller: TextEditingController(),
              prefixIcon: Icon(
                Icons.search,
                color: AppColors.greySecondaryColor,
              ),
              hintText: "Search any Product ....",
              fieldKey: "Search",
              onTap: () {
                context.push(Routes.searchScreen);
              },
            ),
            BannerWidget(),
            SizedBox(height: 10.h),
            RowTextWidget(
              theme: theme,
              leftText: "Categories",
              rightText: "See all",
            ),
            CategoriesListWidget(),
            SizedBox(height: 10.h),
            RowTextWidget(
              theme: theme,

              rightText: "See all",
              leftText: "Flash Sale",
            ),
            FlashSaleContainerTimer(),
            FlashSaleListWidget(),
          ],
        ),
      ),
    );
  }
}
