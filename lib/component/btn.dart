import 'package:flutter/material.dart';
import 'package:wsxc/common/funs.dart';

class WGTextBorderBtn extends StatelessWidget {
  WGTextBorderBtn(this.clickHandle, this.longPressHandle,
      {@required this.title,
      this.height = 30,
      this.style = const TextStyle(fontSize: 11, color: Colors.grey)});

  final VoidCallback clickHandle;
  final VoidCallback longPressHandle;
  final String title;
  final TextStyle style;
  final double height;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => clickHandle,
      onLongPress: () => longPressHandle,
      child: Container(
        height: height,
        decoration: BoxDecoration(
            border: Border.all(color: HexColor.fromHex("64CE61"), width: 1),
            borderRadius: BorderRadius.circular(4)),
        child: Center(
          child: Text(title, style: style),
        ),
      ),
    );
  }
}

class WGTextBtn extends StatelessWidget {
  WGTextBtn(this.clickHandle, this.longPressHandle,
      {@required this.title, TextStyle paramsStyle})
      : style = paramsStyle ??
            TextStyle(fontSize: 11, color: HexColor.fromHex("586C94"));

  final VoidCallback clickHandle;
  final VoidCallback longPressHandle;
  final String title;
  final TextStyle style;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => clickHandle,
      onLongPress: () => longPressHandle,
      child: Text(title, style: style),
    );
  }
}
