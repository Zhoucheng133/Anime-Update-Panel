// ignore_for_file: invalid_use_of_protected_member

import 'dart:async';
import 'dart:convert';
import 'dart:math';

import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:get/get.dart';
import 'package:anime_update_panel/Views/para/para.dart';
import 'package:intl/intl.dart';

class WeekdayInfo extends StatefulWidget {
  final String day;

  const WeekdayInfo({super.key, required this.day});

  @override
  State<WeekdayInfo> createState() => _WeekdayInfoState();
}

class _WeekdayInfoState extends State<WeekdayInfo> {

  final Controller c = Get.put(Controller());

  final ScrollController scrollController=ScrollController();

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

  void addAnimateController(String name, int ep, int weekday){
    var tmp=c.data.value;
    tmp[weekday-1].add(dataConvert(name, ep, weekday));

    c.updateData(tmp);

    // print(c.data);
    saveData();
  }

  Future<void> addAnime(BuildContext context) async {

    TextEditingController name=TextEditingController();
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

  String getDayOfWeek(int day) {
    switch (day) {
      case 1:
        return '星期一';
      case 2:
        return '星期二';
      case 3:
        return '星期三';
      case 4:
        return '星期四';
      case 5:
        return '星期五';
      case 6:
        return '星期六';
      case 7:
        return '星期日';
      default:
        return '';
    }
  }

  bool checkToday(){
    DateTime tmp=DateTime.now();
    DateTime now = DateTime(tmp.year, tmp.month, tmp.day);
    if(widget.day==getDayOfWeek(now.weekday)){
      return true;
    }
    return false;
  }

  int calculateWeeksFromNow(String startTimeString) {
    DateFormat formatter = DateFormat('yyyy/MM/dd');
    DateTime startTime = formatter.parse(startTimeString);
    DateTime tmp=DateTime.now();
    DateTime currentDate = DateTime(tmp.year, tmp.month, tmp.day);

    Duration difference = currentDate.difference(startTime);
    int daysPassed = difference.inDays;
    int weeksPassed = (daysPassed / 7).floor(); // 向下取整

    return max(weeksPassed, 0)+1; // 确保返回的星期数不为负数
  }

  Future<void> editAnime(val, int index) async {

    var name=TextEditingController();
    name.text=val["name"];
    var episode=calculateWeeksFromNow(val["updateDate"]);

    await showDialog<String>(
      context: context,
      builder: (context) => ContentDialog(
        title: Text(
          '编辑番剧信息',
          style: GoogleFonts.notoSansSc()
        ),
        content: StatefulBuilder(
          builder: (BuildContext context, StateSetter setState){
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "名称",
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
                ),
                const SizedBox(height: 30,),
                Row(
                  children: [
                    Expanded(
                      child: FilledButton(
                        style: ButtonStyle(
                          backgroundColor: ButtonState.resolveWith((states){
                            if (states.isPressing) {
                              return const Color.fromARGB(255, 190, 0, 0); // 按下时的颜色
                            } else {
                              return Colors.red; // 默认颜色
                            }
                          })
                        ),
                        child: const Text("删除"), 
                        onPressed: (){
                          Navigator.pop(context);
                          delHandler(val, index);
                        }
                      ),
                    ),
                  ],
                )
              ],
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
              style: GoogleFonts.notoSansSc(),
            ),
            onPressed: (){
              var tmp=c.data.value;
              tmp[dayToInt()-1][index]=dataConvert(name.text, episode, dayToInt());
              c.updateData(tmp);
              saveData();
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }

  void delHandler(val, int index){
    showDialog(
      context: context, 
      builder: (BuildContext context)=>ContentDialog(
        title: Text(
          '删除番剧',
          style: GoogleFonts.notoSansSc(),
        ),
        content: Text(
          '你确定要删除番剧《${val['name']}》吗? 这个操作无法撤销!',
          style: GoogleFonts.notoSansSc(),
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
            style: ButtonStyle(
                backgroundColor: ButtonState.resolveWith((states){
                  if (states.isPressing) {
                    return const Color.fromARGB(255, 190, 0, 0); // 按下时的颜色
                  } else {
                    return Colors.red; // 默认颜色
                  }
                })
              ),
            child: Text(
              '删除',
              style: GoogleFonts.notoSansSc(),
            ),
            onPressed: (){
              var tmp=c.data.value;
              tmp[dayToInt()-1].removeAt(index);
              c.updateData(tmp);
              saveData();
              Navigator.pop(context);
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
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                widget.day,
                style: GoogleFonts.notoSansSc(
                  fontWeight: FontWeight.bold,
                  fontSize: 22
                ),
              ),
              const SizedBox(width: 15,),
              checkToday()==true ? Container(
                height: 15,
                width: 15,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 0, 204, 144),
                  borderRadius: BorderRadius.circular(15),
                ),
              ) : Container(),
              Expanded(child: Container()),
              MouseRegion(
                cursor: SystemMouseCursors.click,
                child: IconButton(
                  icon: const Icon(FluentIcons.add), 
                  onPressed: (){
                    addAnime(context);
                  }
                ),
              )
            ],
          ),
          const SizedBox(height: 15,),
          Expanded(
            child: Obx(() => 
              ListView.separated(
                controller: scrollController,
                itemCount: c.data[dayToInt()-1].length,
                itemBuilder: (BuildContext context, int index){
                  return GestureDetector(
                    onTap: (){
                      editAnime(c.data[dayToInt()-1][index], index);
                    },
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            c.data[dayToInt()-1][index]["name"],
                            style: GoogleFonts.notoSansSc(
                              fontSize: 16,
                              color: const Color.fromARGB(255, 100, 100, 100)
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Text(
                          calculateWeeksFromNow(c.data[dayToInt()-1][index]["updateDate"]).toString(),
                          style: GoogleFonts.notoSansSc(
                            fontSize: 16,
                            color: const Color.fromARGB(255, 100, 100, 100)
                          ),
                          maxLines: 1,
                        ),
                        const SizedBox(width: 10,)
                      ],
                    ),
                  );
                }, 
                separatorBuilder: (BuildContext context, int index) {
                  return const SizedBox(height: 10);
                },
              ),
            )
          )
        ],
      ),
    );
  }
}