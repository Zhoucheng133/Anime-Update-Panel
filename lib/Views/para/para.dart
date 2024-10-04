import 'package:get/get.dart';
class Controller extends GetxController{
  String version='1.1.2';
  var data=[
    [],
    [],
    [],
    [],
    [],
    [],
    [],
  ].obs;

  // DATA形式
  /*
  {
    "updateDate": "2024/1/1",
    "name": "Hello world!",
  }
  */

  void updateData(dataX){
    data.value=[[],[],[],[],[],[],[]];
    update();
    refresh();
    data.value=dataX;
    // print("updated!!");
    update();
    refresh();
  }

  var all=[
    [],
    [],
    [],
    [],
    [],
    [],
    [],
  ].obs;

  RxBool isloading=false.obs;
}