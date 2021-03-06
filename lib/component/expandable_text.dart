import 'package:flutter/material.dart';

class ExpandabelText extends StatefulWidget {
  final String text;
  final int maxLinex;
  final TextStyle style;
  final bool expand;
  const ExpandabelText(
      {Key key,
      @required this.text,
      this.maxLinex,
      this.style = const TextStyle(color: Colors.black, fontSize: 11),
      this.expand = false})
      : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _ExpandabelTextState(text, maxLinex, style, expand);
  }
}

class _ExpandabelTextState extends State<ExpandabelText> {
  final String text;
  final int maxLines;
  final TextStyle style;
  bool expand;

  _ExpandabelTextState(this.text, this.maxLines, this.style, this.expand) {
    if (expand == null) {
      expand = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, size) {
      final span = TextSpan(text: text ?? '', style: style);
      final tp = TextPainter(
          text: span, maxLines: maxLines, textDirection: TextDirection.ltr);
      tp.layout(maxWidth: size.maxWidth);
      if (tp.didExceedMaxLines) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            expand
                ? Text(
                    text ?? '',
                    style: style,
                    textAlign: TextAlign.left,
                  )
                : Text(
                    text,
                    maxLines: maxLines,
                    overflow: TextOverflow.ellipsis,
                    style: style,
                    textAlign: TextAlign.left,
                  ),
            GestureDetector(
              behavior: HitTestBehavior.translucent,
              onTap: () {
                setState(() {
                  expand = !expand;
                });
              },
              child: Container(
                padding: EdgeInsets.only(top: 2),
                child: Text(
                  expand ? '收起' : '全文',
                  style: TextStyle(
                    fontSize: style.fontSize,
                    color: Colors.blue,
                  ),
                ),
              ),
            )
          ],
        );
      } else {
        return Text(
          text ?? '',
          style: style,
          textAlign: TextAlign.left,
        );
      }
    });
  }
}
