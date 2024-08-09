import 'package:anime_update_panel/Views/components/test_data.dart';
import 'package:anime_update_panel/Views/para/para.dart';
import 'package:get/get.dart';
import 'package:html/dom.dart';
import 'package:html/parser.dart' as html_parser;
// import 'package:http/http.dart' as http;

class API{

  final Controller c = Get.put(Controller());

  Future<void> httpRequest() async {
    // final data=await http.get(Uri.parse("https://kisssub.org/addon.php?r=bangumi/table"));
    // final document = html_parser.parse(data.body);

    final document=html_parser.parse(TestData().html);
    Element? bgmTableElement = document.getElementById('bgm-table');
    if (bgmTableElement != null) {
      List<Element> dlElements = bgmTableElement.querySelectorAll('dl');
      
      var all=[
        [],
        [],
        [],
        [],
        [],
        [],
        [],
      ];

      for (var dl in dlElements) {
        Element? dtElement = dl.querySelector('dt');
        List<Element> ddElements = dl.querySelectorAll('dd');

        if (dtElement != null) {
          if(!dtElement.text.contains('星期')){
            break;
          }
          String title=dtElement.text;
          int index=0;
          if(title.contains('星期日')){
            index=6;
          }else if(title.contains('星期一')){
            index=0;
          }else if(title.contains('星期二')){
            index=1;
          }else if(title.contains('星期三')){
            index=2;
          }else if(title.contains('星期四')){
            index=3;
          }else if(title.contains('星期五')){
            index=4;
          }else if(title.contains('星期六')){
            index=5;
          }
          for (var dd in ddElements) {
            if(!dd.text.contains("←") &&  !dd.text.contains("→")){
              all[index].add(dd.text.trim());
            }
          }
        }

      }
      // print(all);
      c.all.value=all;

    } else {
      // 请求失败
    }
  }
}
