import 'package:flutter/material.dart';

class IconTextBtnWidget extends StatelessWidget {
  IconTextBtnWidget(
      {Key key,
      this.image,
      @required this.string,
      this.height = 35,
      this.style = const TextStyle(color: Colors.grey, fontSize: 12),
      this.clickHandle})
      : super(key: key);
  final Image image;
  final String string;
  final double height;
  final TextStyle style;
  final VoidCallback clickHandle;

  @override
  Widget build(BuildContext context) {
    //var width = string
    return GestureDetector(
      onTap: this.clickHandle,
      child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(height / 2)),
            border: Border.all(width: 1, color: Colors.grey),
          ),
          constraints: BoxConstraints(minHeight: 20, maxWidth: 40),
          padding: EdgeInsets.fromLTRB(8, 3, 8, 3),
          child: Builder(builder: (context) {
            var children = <Widget>[];
            if (image != null) {
              children.add(image);
            }
            children.add(Text(
              string,
              style: style,
            ));
            return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: children);
          })),
    );
  }
}
