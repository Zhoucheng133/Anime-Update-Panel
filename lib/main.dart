// ignore_for_file: prefer_const_constructors, camel_case_types, prefer_const_literals_to_create_immutables

import 'dart:convert';
import 'dart:io';

import 'package:anime_update_panel/Views/interface.dart';
import 'package:anime_update_panel/Views/para/para.dart';
import 'package:fluent_ui/fluent_ui.dart';
// import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:window_manager/window_manager.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await windowManager.ensureInitialized();
  WindowOptions windowOptions = WindowOptions(
    size: Size(1100, 770),
    center: true,
    backgroundColor: Colors.transparent,
    skipTaskbar: false,
    titleBarStyle: TitleBarStyle.hidden,
    title: "Anime Update Panel"
  );
  windowManager.waitUntilReadyToShow(windowOptions, () async {
    await windowManager.show();
    await windowManager.focus();
  });
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return FluentApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate
      ],
      supportedLocales: [
        Locale('zh', 'CN'),
        Locale('en', 'US'),
      ],
      home: MainApp(),
    );
  }
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> with WindowListener {

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
    windowManager.addListener(this);
    getData();
  }

  @override
  void dispose() {
    windowManager.removeListener(this);
    super.dispose();
  }

  bool isMax=false;

  @override
  void onWindowMaximize(){
    setState(() {
      isMax=true;
    });
  }

  @override
  void onWindowUnmaximize() {
    setState(() {
      isMax=false;
    });
  }

  void resizeWindow(){
    setState(() {
      isMax=false;
    });
    windowManager.restore();
  }

  void minWindow(){
    windowManager.minimize();
  }

  void maxWindow(){
    setState(() {
      isMax=true;
    });
    windowManager.maximize();
  }

  void closeWindow(){
    windowManager.close();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(
            height: 30,
            child: Platform.isWindows ? Row(
              children: [
                Expanded(child: DragToMoveArea(child: Container(),)),
                WindowCaptionButton.minimize(
                  onPressed: () => minWindow(),
                ),
                !isMax ?
                WindowCaptionButton.maximize(
                  onPressed: () => maxWindow(),
                ) : WindowCaptionButton.unmaximize(
                  onPressed: () => resizeWindow(),
                ),
                WindowCaptionButton.close(
                  onPressed: () => closeWindow(),
                ),
              ],
            ) : DragToMoveArea(child: Container(),),
          ),
          Interface(),
        ],
      )
    );
  }
}
