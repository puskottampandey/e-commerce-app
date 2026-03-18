import 'package:e_commerce_app/feature/home/screen/cart_screen.dart';
import 'package:e_commerce_app/feature/home/screen/categories_screen.dart';
import 'package:e_commerce_app/feature/home/screen/home_screen.dart';
import 'package:e_commerce_app/feature/home/screen/order_screen.dart';
import 'package:e_commerce_app/feature/home/screen/profile_screen.dart';
import 'package:e_commerce_app/feature/home/screen/wrapper_screen.dart';
import 'package:e_commerce_app/feature/home/widget/cart_screen_widget.dart/cart_screen_widget.dart';
import 'package:flutter/material.dart';

class BottomNavItemModel {
  final Widget screen;
  final IconData icon;
  final String label;

  const BottomNavItemModel({
    required this.screen,
    required this.icon,
    required this.label,
  });
}

final List<BottomNavItemModel> bottomNavItems = [
  BottomNavItemModel(
    screen: const HomeScreen(),
    icon: Icons.home,
    label: "Home",
  ),
  BottomNavItemModel(
    screen: const CategoriesScreen(),
    icon: Icons.grid_view,
    label: "Categories",
  ),
  BottomNavItemModel(
    screen: const CartScreen(),
    icon: Icons.shopping_cart,
    label: "Cart",
  ),
  BottomNavItemModel(
    screen: const OrderScreen(),
    icon: Icons.receipt_long,
    label: "Orders",
  ),
  BottomNavItemModel(
    screen: const ProfileScreen(),
    icon: Icons.person,
    label: "Profile",
  ),
];
