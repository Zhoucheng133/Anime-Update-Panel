
import 'package:fluent_ui/fluent_ui.dart';
import 'package:google_fonts/google_fonts.dart';

class ControlItem extends StatefulWidget {

  final VoidCallback func;
  final String label;
  final IconData icon;

  const ControlItem({super.key, required this.func, required this.label, required this.icon});

  @override
  State<ControlItem> createState() => _ControlItemState();
}

class _ControlItemState extends State<ControlItem> {

  bool onHover=false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        widget.func();
      },
      child: MouseRegion(
        onEnter: (_){
          setState(() {
            onHover=true;
          });
        },
        onExit: (_){
          setState(() {
            onHover=false;
          });
        },
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          decoration: BoxDecoration(
            color: onHover ? Colors.grey[20] : Colors.grey[20].withAlpha(0),
            borderRadius: BorderRadius.circular(3),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 6, bottom: 6),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(widget.icon),
                const SizedBox(width: 5,),
                Text(
                  widget.label,
                  style: GoogleFonts.notoSansSc(),
                ),
              ],
            ),
          ),
          
        ),
      ),
    );
  }
}