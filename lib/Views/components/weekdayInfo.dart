// ignore_for_file: file_names, camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables, invalid_use_of_protected_member
import 'dart:async';
import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:get/get.dart';
import 'package:anime_update_panel/Views/para/para.dart';
import 'package:intl/intl.dart';

class weekdayInfo extends StatefulWidget {
  final String day;

  const weekdayInfo({super.key, required this.day});

  @override
  State<weekdayInfo> createState() => _weekdayInfoState();
}

class _weekdayInfoState extends State<weekdayInfo> {

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
    DateTime now = DateTime.now();
    int currentDayOfWeek = now.weekday;
    int daysToSubtract = currentDayOfWeek - weekday;
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

    print(c.data);
    saveData();
  }

  Future<void> addAnime(BuildContext context) async {

    TextEditingController name=TextEditingController();
    int episode=1;
    
    await showDialog<String>(
      context: context,
      builder: (context) => ContentDialog(
        title: Text('添加一个${widget.day}的番剧'),
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
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18
                    ),
                  ),
                  SizedBox(height: 10,),
                  TextBox(
                    controller: name,
                  ),
                  SizedBox(height: 30,),
                  Text(
                    "已更新集数",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18
                    ),
                  ),
                  SizedBox(height: 10,),
                  NumberFormBox(
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
            child: const Text('取消'),
            onPressed: () => Navigator.pop(context),
          ),
          FilledButton(
            child: const Text('完成'),
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
    DateTime now = DateTime.now();
    if(widget.day==getDayOfWeek(now.weekday)){
      return true;
    }
    return false;
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
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20
                ),
              ),
              SizedBox(width: 15,),
              checkToday()==true ? Container(
                height: 15,
                width: 15,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 0, 204, 144),
                  borderRadius: BorderRadius.circular(15),
                ),
              ) : Container(),
              Expanded(child: Container()),
              MouseRegion(
                cursor: SystemMouseCursors.click,
                child: IconButton(
                  icon: Icon(FluentIcons.add), 
                  onPressed: (){
                    addAnime(context);
                  }
                ),
              )
            ],
          ),
          Expanded(
            child: Obx(() => 
              ListView.builder(
                controller: scrollController,
                itemCount: c.data[dayToInt()-1].length,
                itemBuilder: (BuildContext context, int index){
                  return Row(
                    children: [
                      Text(
                        c.data[dayToInt()-1][index]["name"]
                      )
                    ],
                  );
                }
              ),
            )
          )
        ],
      ),
    );
  }
}