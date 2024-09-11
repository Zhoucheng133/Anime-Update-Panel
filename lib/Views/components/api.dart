// import 'package:anime_update_panel/Views/components/test_data.dart';
import 'dart:convert';

import 'package:anime_update_panel/Views/para/para.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class API{

  final Controller c = Get.put(Controller());

  Future<void> httpRequest() async {
    List<List<String>> ls = [];
    try {
      final response = await http.get(Uri.parse("https://api.bgm.tv/calendar"));
      final decodedBody = utf8.decode(response.bodyBytes);
      List data=json.decode(decodedBody);
      for(var i=0; i<data.length; i++){
        List<String> p=[];
        for(var j=0; j<data[i]['items'].length; j++){
          p.add(data[i]['items'][j]["name_cn"].length==0 ? data[i]['items'][j]["name"] : data[i]['items'][j]["name_cn"]);
        }
        ls.add(p);
      }
    } catch (_) {
      ls = [];
    }
    c.all.value=ls;
  }
}
