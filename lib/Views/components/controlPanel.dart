// ignore_for_file: camel_case_types, file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:fluent_ui/fluent_ui.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../para/para.dart';
// import 'package:flutter/material.dart';

class controlPanel extends StatefulWidget {
  const controlPanel({super.key});

  @override
  State<controlPanel> createState() => _controlPanelState();
}

class _controlPanelState extends State<controlPanel> {

  final Controller c = Get.put(Controller());

  void clearDialog(){
    showDialog(
      context: context, 
      builder:  (context) => ContentDialog(
        title: Text(
          "清除所有数据",
          style: GoogleFonts.notoSansSc(),
        ),
        content: Text(
          "确定要删除所有数据吗?",
          style: GoogleFonts.notoSansSc(),
        ),
        actions: [
          Button(
            child: Text(
              '取消',
              style: GoogleFonts.notoSansSc(),
            ),
            onPressed: () async {
              Navigator.pop(context);
            },
          ),
          FilledButton(
            child: Text(
              '继续',
              style: GoogleFonts.notoSansSc(),
            ),
            style: ButtonStyle(
              backgroundColor: ButtonState.resolveWith((states){
                if (states.isPressing) {
                  return Color.fromARGB(255, 190, 0, 0); // 按下时的颜色
                } else {
                  return Colors.red; // 默认颜色
                }
              })
            ),
            onPressed: () async {
              Navigator.pop(context);
              final SharedPreferences prefs = await SharedPreferences.getInstance();
              await prefs.remove('data');
              c.updateData([[],[],[],[],[],[],[]]);
            },
          ),
        ],
      )
    );
  }

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
          SizedBox(height: 15,),
          Button(
            child: Text(
              "清除所有的数据",
              style: GoogleFonts.notoSansSc(),
            ), 
            onPressed: () {
              clearDialog();
            }
          )
        ],
      ),
    );
  }
}