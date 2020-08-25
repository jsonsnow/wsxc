import 'package:flutter/material.dart';

class wsxc_btn extends StatelessWidget {
  wsxc_btn(this.clickHandle, this.longPressHandle,
      {@required this.title,
      this.style = const TextStyle(fontSize: 11, color: Colors.grey)});

  final VoidCallback clickHandle;
  final VoidCallback longPressHandle;
  final String title;
  final TextStyle style;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => clickHandle,
      onLongPress: () => longPressHandle,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.blue[500],
          border: Border.all(color: Colors.blue[500], width: 1),
        ),
        child: Text(title, style: style),
      ),
    );
  }
}
