import 'package:flutter/material.dart';
import 'package:wsxc/common/index.dart';

class IconTextBtnWidget extends StatelessWidget {
  IconTextBtnWidget(
      {Key key,
      this.image,
      @required this.string,
      this.height = 20,
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
    var size = itemSize();
    return GestureDetector(
      onTap: this.clickHandle,
      child: Container(
        height: size.height,
        width: size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(size.height / 2)),
          border: Border.all(width: 1, color: Colors.grey),
        ),
        child: Padding(
          padding: EdgeInsets.fromLTRB(8, 3, 8, 3),
          child: Builder(
            builder: (context) {
              var children = <Widget>[];
              if (image != null) {
                children.add(Padding(
                  padding: EdgeInsets.only(right: 5),
                  child: image,
                ));
              }
              children.add(Text(
                string,
                style: style,
              ));
              return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: children);
            },
          ),
        ),
      ),
    );
  }

  Size calculateTextSize(String value, TextStyle style) {
    if (value == null) {
      return Size.zero;
    }
    TextPainter painter = TextPainter(
      textDirection: TextDirection.ltr,
      text: TextSpan(text: value, style: style),
    );
    painter.layout();
    return painter.size;
  }

  Size itemSize() {
    var size = calculateTextSize(string, style);
    var height = size.height + 10;
    if (image != null) {
      var width = size.width + 20 + 16;
      size = Size(width, height);
    } else {
      var width = size.width + 20 + 16;
      size = Size(width, height);
    }
    return size;
  }
}
