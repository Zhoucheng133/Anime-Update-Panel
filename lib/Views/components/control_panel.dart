import 'package:anime_update_panel/Views/components/all_item.dart';
import 'package:anime_update_panel/Views/components/api.dart';
import 'package:anime_update_panel/Views/components/control_item.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';

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

  void showAll(){
    showDialog(
      context: context, 
      builder: (context)=>ContentDialog(
        constraints: const BoxConstraints(maxWidth: 400, maxHeight: 500),
        title: Text(
          '本季度番剧时刻表',
          style: GoogleFonts.notoSansSc(),
        ),
        content: Obx(()=>
          c.isloading.value ? const Center(
            child: ProgressRing(),
          ) : ListView(
            children: const [
              AllItemTitle(title: '星期一'),
              AllItem(widgetIndex: 0, day: '星期一',),
              AllItemTitle(title: '星期二'),
              AllItem(widgetIndex: 1, day: '星期二',),
              AllItemTitle(title: '星期三'),
              AllItem(widgetIndex: 2, day: '星期三',),
              AllItemTitle(title: '星期四'),
              AllItem(widgetIndex: 3, day: '星期四',),
              AllItemTitle(title: '星期五'),
              AllItem(widgetIndex: 4, day: '星期五',),
              AllItemTitle(title: '星期六'),
              AllItem(widgetIndex: 5, day: '星期六',),
              AllItemTitle(title: '星期日'),
              AllItem(widgetIndex: 6, day: '星期日',),
            ],
          ),
        ),
        actions: [
          FilledButton(
            child: Text(
              '完成',
              style: GoogleFonts.notoSansSc(),
            ), onPressed: (){
              Navigator.pop(context);
            }
          )
        ],
      )
    );
  }

  void aboutDialog(){
    showDialog(
      context: context, 
      builder: (context)=>ContentDialog(
        title: Text(
          '关于',
          style: GoogleFonts.notoSansSc(),
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: SizedBox(
                width: 100,
                height: 100,
                child: Image.asset("assets/icon.png")
              ),
            ),
            Text(
              'Anime Update Panel', 
              style: GoogleFonts.notoSansSc(
                fontWeight: FontWeight.bold,
                fontSize: 20
              ),
            ),
            const SizedBox(height: 10,),
            Text(
              c.version,
              style: GoogleFonts.notoSansSc(
                color: Colors.grey[80],
              ),
            ),
            const SizedBox(height: 15,),
            GestureDetector(
              onTap: () async {
                final Uri url = Uri.parse('https://github.com/Zhoucheng133/Anime-Update-Panel');
                await launchUrl(url);
              },
              child: MouseRegion(
                cursor: SystemMouseCursors.click,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const FaIcon(
                      FontAwesomeIcons.github,
                      size: 15,
                    ),
                    const SizedBox(width: 5,),
                    Text(
                      '本项目地址',
                      style:  GoogleFonts.notoSansSc(),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10,),
            GestureDetector(
              onTap: () async {
                final Uri url = Uri.parse('https://kisssub.org/');
                await launchUrl(url);
              },
              child: MouseRegion(
                cursor: SystemMouseCursors.click,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const FaIcon(
                      FontAwesomeIcons.globe,
                      size: 15,
                    ),
                    const SizedBox(width: 5,),
                    Text(
                      '番剧表信息来自kisssub.org',
                      style:  GoogleFonts.notoSansSc(),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
        actions: [
          FilledButton(
            child: Text(
              '完成',
              style: GoogleFonts.notoSansSc(),
            ), 
            onPressed: (){
              Navigator.pop(context);
            }
          )
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
          const Padding(
            padding: EdgeInsets.only(left: 5),
            child: Icon(
              FluentIcons.app_icon_default_edit,
              size: 20,
            ),
          ),
          const SizedBox(height: 15,),
          ControlItem(
            func: () async {
              c.isloading.value=true;
              showAll();
              await API().httpRequest();
              c.isloading.value=false;
            }, 
            label: '本季度番剧表', 
            icon: FluentIcons.table_computed
          ),
          const SizedBox(height: 10,),
          ControlItem(
            func: () {
              clearDialog();
            }, 
            label: '清除所有数据', 
            icon: FluentIcons.delete
          ),
          const SizedBox(height: 10,),
          ControlItem(
            func: () {
              aboutDialog();
            }, 
            label: '关于', 
            icon: FluentIcons.info
          ),
        ],
      ),
    );
  }
}