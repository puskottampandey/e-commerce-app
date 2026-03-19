import 'package:flutter/material.dart';

class CategoriesScreenWidget extends StatefulWidget {
  const CategoriesScreenWidget({super.key});

  @override
  State<CategoriesScreenWidget> createState() => _CategoriesScreenWidgetState();
}

class _CategoriesScreenWidgetState extends State<CategoriesScreenWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text("Categories")));
  }
}
