// ignore_for_file: file_names, camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:fluent_ui/fluent_ui.dart';

class weekdayInfo extends StatefulWidget {
  final String day;

  const weekdayInfo({super.key, required this.day});

  @override
  State<weekdayInfo> createState() => _weekdayInfoState();
}

class _weekdayInfoState extends State<weekdayInfo> {

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
              ) : Container()
            ],
          )
        ],
      ),
    );
  }
}