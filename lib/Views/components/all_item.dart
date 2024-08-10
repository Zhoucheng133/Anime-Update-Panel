// ignore_for_file: invalid_use_of_protected_member

import 'dart:convert';

import 'package:anime_update_panel/Views/para/para.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AllItem extends StatefulWidget {

  final int widgetIndex;
  final String day;

  const AllItem({super.key, required this.widgetIndex, required this.day});

  @override
  State<AllItem> createState() => _AllItemState();
}

class _AllItemState extends State<AllItem> {

  final Controller c = Get.put(Controller());

  Future<void> addAnime(BuildContext context, int innerIndex) async {
    TextEditingController name=TextEditingController();
    name.text=c.all[widget.widgetIndex][innerIndex];
    int episode=1;
    
    await showDialog<String>(
      context: context,
      builder: (context) => ContentDialog(
        title: Text(
          '添加一个${widget.day}的番剧',
          style: GoogleFonts.notoSansSc(),
        ),
        content: StatefulBuilder(
          builder: (BuildContext context, StateSetter setState){
            return SizedBox(
              height: 250,
              width: 300,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "名称",
                    // style: GoogleFonts.notoSansSc(),
                    style: GoogleFonts.notoSansSc(
                      // fontWeight: FontWeight.bold,
                      fontSize: 16
                    ),
                  ),
                  const SizedBox(height: 10,),
                  TextBox(
                    controller: name,
                  ),
                  const SizedBox(height: 30,),
                  Text(
                    "已更新集数",
                    style: GoogleFonts.notoSansSc(
                      // fontWeight: FontWeight.bold,
                      fontSize: 16
                    ),
                  ),
                  const SizedBox(height: 10,),
                  NumberBox(
                    value: episode,
                    min: 1,
                    onChanged: (value) => setState((){
                      episode=value!;
                    }),
                  )
                ],
              ),
            );
          }
        ),
        actions: [
          Button(
            child: Text(
              '取消',
              style: GoogleFonts.notoSansSc(),
            ),
            onPressed: () => Navigator.pop(context),
          ),
          FilledButton(
            child: Text(
              '完成',
              style: GoogleFonts.notoSansSc()
            ),
            onPressed: (){
              if(name.text.isEmpty){
                return;
              }else{
                addAnimateController(name.text, episode, dayToInt());
                Navigator.pop(context);
                return;
              }
            },
          ),
        ],
      ),
    );
  }

  void addAnimateController(String name, int ep, int weekday){
    var tmp=c.data.value;
    tmp[weekday-1].add(dataConvert(name, ep, weekday));

    c.updateData(tmp);

    // print(c.data);
    saveData();
  }

  Map dataConvert(String name, int ep, int weekday){
    DateTime tmp=DateTime.now();
    DateTime now = DateTime(tmp.year, tmp.month, tmp.day);
    int currentDayOfWeek = now.weekday;
    int daysToSubtract = currentDayOfWeek - weekday;
    if(daysToSubtract<0){
      daysToSubtract=7+daysToSubtract;
    }
    int totalDaysToSubtract = ((ep-1) * 7) + daysToSubtract;
    DateTime resultDate = now.subtract(Duration(days: totalDaysToSubtract));
    String formattedDate = DateFormat('yyyy/MM/dd').format(resultDate);
    Map<String, dynamic> result = {'name': name, 'updateDate': formattedDate};
    return result;
  }

  Future<void> saveData() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString("data", jsonEncode(c.data));
  }

  int dayToInt(){
    switch (widget.day) {
      case '星期一':
        return 1;
      case '星期二':
        return 2;
      case '星期三': 
        return 3;
      case '星期四':
        return 4;
      case '星期五':
        return 5;
      case '星期六':
        return 6;
      case '星期日':
        return 7;
      default: return 1;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: List.generate(c.all[widget.widgetIndex].length, (index){
        return Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: SizedBox(
                height: 35,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    c.all[widget.widgetIndex][index],
                    style: GoogleFonts.notoSansSc(
                      fontSize: 16,
                      color: const Color.fromARGB(255, 100, 100, 100),
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: (){

              },
              child: MouseRegion(
                cursor: SystemMouseCursors.click,
                child: IconButton(
                  icon: const Icon(FluentIcons.add), 
                  onPressed: (){
                    addAnime(context, index);
                  }
                ),
              ),
            ),
            const SizedBox(width: 10,)
          ],
        );
      }),
    );
  }
}

class AllItemTitle extends StatefulWidget {

  final String title;

  const AllItemTitle({super.key, required this.title});

  @override
  State<AllItemTitle> createState() => _AllItemTitleState();
}

class _AllItemTitleState extends State<AllItemTitle> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.title,
      style: GoogleFonts.notoSansSc(
        fontWeight: FontWeight.bold,
        fontSize: 22
      ),
    );
  }
}