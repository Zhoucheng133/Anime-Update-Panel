import 'package:anime_update_panel/Views/components/control_panel.dart';
import 'package:anime_update_panel/Views/components/weekday_info.dart';
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
        children: const [
          WeekdayInfo(day: "星期一"),
          WeekdayInfo(day: "星期二"),
          WeekdayInfo(day: "星期三"),
          WeekdayInfo(day: "星期四"),
          WeekdayInfo(day: "星期五"),
          WeekdayInfo(day: "星期六"),
          WeekdayInfo(day: "星期日"),
          ControlPanel(),
        ],
      ),
    );
  }
}