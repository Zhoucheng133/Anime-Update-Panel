// ignore_for_file: camel_case_types, file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:fluent_ui/fluent_ui.dart';
// import 'package:flutter/material.dart';

class controlPanel extends StatefulWidget {
  const controlPanel({super.key});

  @override
  State<controlPanel> createState() => _controlPanelState();
}

class _controlPanelState extends State<controlPanel> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            FluentIcons.app_icon_default_edit,
            size: 20,
          ),
        ],
      ),
    );
  }
}