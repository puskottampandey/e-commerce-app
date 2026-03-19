import 'package:e_commerce_app/core/constant/assets.dart';
import 'package:e_commerce_app/core/theme/constant_color.dart';
import 'package:e_commerce_app/feature/wrapper_screen/model/bottom_navbar_model.dart';
import 'package:e_commerce_app/feature/wrapper_screen/widget/floating_action_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WrapperScreenWidget extends StatefulWidget {
  const WrapperScreenWidget({super.key});

  @override
  State<WrapperScreenWidget> createState() => _HomesScreenWidgetState();
}

class _HomesScreenWidgetState extends State<WrapperScreenWidget> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackgroundColor,
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: AppColors.primaryColor,
        unselectedItemColor: AppColors.greySecondaryColor,
        backgroundColor: AppColors.white,

        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        items: bottomNavItems.map((item) {
          return BottomNavigationBarItem(
            icon: Icon(item.icon),
            label: item.label,
          );
        }).toList(),
      ),
      floatingActionButton: FloatingActionWidget(),
      body: bottomNavItems[currentIndex].screen,
    );
  }
}
