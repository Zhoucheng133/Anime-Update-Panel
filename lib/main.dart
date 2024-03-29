// ignore_for_file: prefer_const_constructors, camel_case_types

import 'dart:convert';
import 'dart:io';

import 'package:anime_update_panel/Views/interface.dart';
import 'package:anime_update_panel/Views/para/para.dart';
import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
// import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
  doWhenWindowReady(() {
    const initialSize = Size(1100, 770);
    appWindow.minSize = initialSize;
    appWindow.size = initialSize;
    appWindow.alignment = Alignment.center;
    appWindow.show();
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return FluentApp(
      home: MainApp(),
    );
  }
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {

  final Controller c = Get.put(Controller());
  
  Future<void> getData() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String? data = prefs.getString('data');
    if(data!=null){
      var dataSaved=jsonDecode(data);
      c.data.value=dataSaved.cast<List<dynamic>>();
    }
  }

  @override
  void initState() {
    super.initState();
    
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(
            height: 30,
            width: MediaQuery.of(context).size.width,
            child: WindowTitleBarBox(
              child: Platform.isMacOS ? MoveWindow() : Row(
                children: [
                  Expanded(child: MoveWindow()),
                  windowButtons(),
                ],
              ),
            ),
          ),
          Interface(),
        ],
      ),
    );
  }
}

class windowButtons extends StatelessWidget {
  const windowButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        MinimizeWindowButton(),
        MaximizeWindowButton(),
        CloseWindowButton(),
      ],
    );
  }
}
