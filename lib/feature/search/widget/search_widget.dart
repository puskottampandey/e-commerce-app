import 'package:e_commerce_app/core/widget/scaffold_wrapper/Resuable_scaffold_wrapper.dart';
import 'package:e_commerce_app/core/widget/text_field/custom_search_field.dart';
import 'package:flutter/material.dart';

class SearchWidget extends StatefulWidget {
  const SearchWidget({super.key});

  @override
  State<SearchWidget> createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  final TextEditingController _searchController = TextEditingController();
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ResuableScaffoldWrapper(
      title: "Search",
      child: Column(
        children: [
          CustomSearchField(
            autoFocus: true,
            controller: _searchController,
            hintText: "Search",
            fieldKey: "Search",
          ),
        ],
      ),
    );
  }
}
