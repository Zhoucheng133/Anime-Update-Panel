import 'package:anime_update_panel/Views/para/para.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class AllItem extends StatefulWidget {

  final int widgetIndex;

  const AllItem({super.key, required this.widgetIndex});

  @override
  State<AllItem> createState() => _AllItemState();
}

class _AllItemState extends State<AllItem> {

  final Controller c = Get.put(Controller());
  
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