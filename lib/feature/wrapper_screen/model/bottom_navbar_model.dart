import 'package:e_commerce_app/feature/dashboard/cart/screen/cart_screen.dart';
import 'package:e_commerce_app/feature/dashboard/categories/screen/categories_screen.dart';
import 'package:e_commerce_app/feature/dashboard/home/screen/home_screen.dart';
import 'package:e_commerce_app/feature/dashboard/order/screen/order_screen.dart';
import 'package:e_commerce_app/feature/dashboard/profile/screen/profile_screen.dart';

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
