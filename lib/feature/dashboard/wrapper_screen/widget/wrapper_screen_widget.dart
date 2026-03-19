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
      bottomNavigationBar: BottomNavigationBar(
        elevation: 10,
        selectedItemColor: AppColors.primaryColor,
        unselectedItemColor: AppColors.greySecondaryColor,
        backgroundColor: AppColors.white,
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        items: bottomNavItems.map((item) {
          return BottomNavigationBarItem(
            backgroundColor: AppColors.red,
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
