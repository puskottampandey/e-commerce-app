import 'package:e_commerce_app/core/theme/constant_color.dart';
import 'package:e_commerce_app/feature/home/model/bottom_navbar_model.dart';
import 'package:flutter/material.dart';

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
      appBar: AppBar(backgroundColor: AppColors.scaffoldBackgroundColor),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: AppColors.primaryColor,
        unselectedItemColor: AppColors.greySecondaryColor,
        backgroundColor: AppColors.scaffoldBackgroundColor,

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
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.scaffoldBackgroundColor,
        child: Icon(Icons.chat_rounded),
        onPressed: () {},
      ),
      body: bottomNavItems[currentIndex].screen,
    );
  }
}
