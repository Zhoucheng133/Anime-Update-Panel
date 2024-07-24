import 'package:fluent_ui/fluent_ui.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../para/para.dart';
// import 'package:flutter/material.dart';

class ControlPanel extends StatefulWidget {
  const ControlPanel({super.key});

  @override
  State<ControlPanel> createState() => _ControlPanelState();
}

class _ControlPanelState extends State<ControlPanel> {

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
            style: ButtonStyle(
              backgroundColor: ButtonState.resolveWith((states){
                if (states.isPressing) {
                  return const Color.fromARGB(255, 190, 0, 0); // 按下时的颜色
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
            child: Text(
              '继续',
              style: GoogleFonts.notoSansSc(),
            ),
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
          const Icon(
            FluentIcons.app_icon_default_edit,
            size: 20,
          ),
          const SizedBox(height: 15,),
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