import 'package:flutter/material.dart';

class ExpandableBtn extends StatefulWidget {
  final String text;
  final int maxLines;
  final TextStyle style;
  final bool expand;
  const ExpandableBtn(
      {Key key, this.text, this.maxLines, this.style, this.expand})
      : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _ExpandableBtn();
  }
}

class _ExpandableBtn extends State<ExpandableBtn> {}
