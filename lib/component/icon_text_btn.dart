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
    return GestureDetector(
      onTap: this.clickHandle,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(height / 2)),
            border: Border.all(width: 1, color: Colors.grey)),
        padding: EdgeInsets.fromLTRB(15, 3, 15, 3),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            image != null ? image : null,
            Text(
              string,
              style: style,
            )
          ],
        ),
      ),
    );
  }
}
