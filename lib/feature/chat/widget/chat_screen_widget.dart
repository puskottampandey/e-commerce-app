import 'package:e_commerce_app/core/theme/constant_color.dart';
import 'package:e_commerce_app/core/widget/scaffold_wrapper/Resuable_scaffold_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class ChatScreenWidget extends StatefulWidget {
  const ChatScreenWidget({super.key});

  @override
  State<ChatScreenWidget> createState() => _ChatScreenWidgetState();
}

class _ChatScreenWidgetState extends State<ChatScreenWidget> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ResuableScaffoldWrapper(
      title: "Chat",
      child: Column(children: []),
    );
  }
}
