import 'package:e_commerce_app/core/widget/scaffold_wrapper/Resuable_scaffold_wrapper.dart';
import 'package:flutter/material.dart';

class NotifcationWidget extends StatefulWidget {
  const NotifcationWidget({super.key});

  @override
  State<NotifcationWidget> createState() => _NotifcationWidgetState();
}

class _NotifcationWidgetState extends State<NotifcationWidget> {
  @override
  Widget build(BuildContext context) {
    return ResuableScaffoldWrapper(
      title: "Notification",
      child: Column(children: []),
    );
  }
}
