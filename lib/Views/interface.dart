// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:anime_update_panel/Views/components/weekdayInfo.dart';
import 'package:flutter/material.dart';

class Interface extends StatefulWidget {
  const Interface({super.key});

  @override
  State<Interface> createState() => _InterfaceState();
}

class _InterfaceState extends State<Interface> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          childAspectRatio: MediaQuery.of(context).size.width/(2*(MediaQuery.of(context).size.height-30))
        ),
        children: [
          weekdayInfo(day: "星期一"),
          weekdayInfo(day: "星期二"),
          weekdayInfo(day: "星期三"),
          weekdayInfo(day: "星期四"),
          weekdayInfo(day: "星期五"),
          weekdayInfo(day: "星期六"),
          weekdayInfo(day: "星期日"),
        ],
      ),
    );
  }
}