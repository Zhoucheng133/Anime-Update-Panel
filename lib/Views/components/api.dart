// import 'package:anime_update_panel/Views/components/test_data.dart';
import 'dart:convert';

import 'package:anime_update_panel/Views/para/para.dart';
import 'package:get/get.dart';
import 'package:html/dom.dart';
import 'package:html/parser.dart' as html_parser;
import 'package:http/http.dart' as http;

class API{

  final Controller c = Get.put(Controller());

  Future<void> httpRequest() async {
    // print(data.body);
    List<List<String>> ls = [];
    //c.all.value
    try {
      final response = await http.get(Uri.parse("https://bgm.tv/calendar"));
      final decodedBody = utf8.decode(response.bodyBytes);
      final document = html_parser.parse(decodedBody);
      List<Element> weekElements = document.querySelectorAll('li.week');

      for (var weekElement in weekElements) {
        List<String> perLs = [];
        List<Element> subLis = weekElement.querySelectorAll('li');

        for (var subLi in subLis) {
          Element? firstNav = subLi.querySelector('.nav');

          if (firstNav != null && firstNav.innerHtml.isNotEmpty) {
            perLs.add(firstNav.innerHtml);
          } else {
            Element? originalTitle = subLi.querySelector('em');

            if (originalTitle != null && originalTitle.innerHtml.isNotEmpty) {
              perLs.add(originalTitle.innerHtml);
            }
          }
        }
        ls.add(perLs);
      }
    } catch (_) {
      ls = [];
    }
    c.all.value=ls;
  }
}
