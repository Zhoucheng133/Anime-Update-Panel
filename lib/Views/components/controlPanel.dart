// ignore_for_file: camel_case_types, file_names, prefer_const_constructors

import 'package:fluent_ui/fluent_ui.dart';
// import 'package:flutter/material.dart';

class controlPanel extends StatefulWidget {
  const controlPanel({super.key});

  @override
  State<controlPanel> createState() => _controlPanelState();
}

class _controlPanelState extends State<controlPanel> {

    Future<void> addAnime(BuildContext context) async {
    
    TextEditingController name=TextEditingController();
    DateTime? updateDate;

    
    final result = await showDialog<String>(
      context: context,
      builder: (context) => ContentDialog(
        title: Text('添加一个番剧'),
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
                    "更新时间",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18
                    ),
                  ),
                  SizedBox(height: 10,),
                  DatePicker(
                    selected: updateDate,
                    onChanged: (time) => setState(() => updateDate = time),
                    showYear: false,
                  )
                ],
              ),
            );
          }
        ),
        actions: [
          Button(
            child: const Text('取消'),
            onPressed: () {
              Navigator.pop(context, 'User deleted file');
              // Delete file here
            },
          ),
          FilledButton(
            child: const Text('完成'),
            onPressed: () => Navigator.pop(context, 'User canceled dialog'),
          ),
        ],
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}