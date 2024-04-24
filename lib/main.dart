// ignore_for_file: prefer_const_constructors, camel_case_types, prefer_const_literals_to_create_immutables

import 'dart:convert';
import 'dart:io';

import 'package:anime_update_panel/Views/interface.dart';
import 'package:anime_update_panel/Views/para/para.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/services.dart';
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
          SizedBox(height: 30,),
          Interface(),
          Platform.isMacOS ? PlatformMenuBar(
            menus: [
              PlatformMenu(
                label: "netPlayer", 
                menus: [
                  PlatformMenuItemGroup(
                    members: [
                      PlatformProvidedMenuItem(
                        enabled: true,
                        type: PlatformProvidedMenuItemType.about,
                      ),
                    ]
                  ),
                  PlatformMenuItemGroup(
                    members: [
                      PlatformProvidedMenuItem(
                        enabled: true,
                        type: PlatformProvidedMenuItemType.hide,
                      ),
                      PlatformProvidedMenuItem(
                        enabled: true,
                        type: PlatformProvidedMenuItemType.quit,
                      ),
                    ]
                  )
                ]
              ),
              PlatformMenu(
                label: "编辑",
                menus: [
                  PlatformMenuItem(
                    label: "拷贝",
                    shortcut: const SingleActivator(
                      LogicalKeyboardKey.keyC,
                      meta: true
                    ),
                    onSelected: (){}
                  ),
                  PlatformMenuItem(
                    label: "粘贴",
                    shortcut: const SingleActivator(
                      LogicalKeyboardKey.keyV,
                      meta: true
                    ),
                    onSelected: (){}
                  ),
                  PlatformMenuItem(
                    label: "全选",
                    shortcut: const SingleActivator(
                      LogicalKeyboardKey.keyA,
                      meta: true
                    ),
                    onSelected: (){}
                  )
                ]
              ),
            ]
          ) : Container()
        ],
      )
    );
  }
}
