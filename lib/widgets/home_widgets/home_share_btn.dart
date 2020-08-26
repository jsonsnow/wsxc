import 'package:flutter/material.dart';
import 'package:wsxc/common/funs.dart';
import 'package:wsxc/component/btn.dart';
import 'package:wsxc/models/index.dart';

class ShareBtnWidget extends StatelessWidget {
  ShareBtnWidget({Key key, this.goods, this.clickHandle, this.longPressHandle})
      : super(key: key);
  final VoidCallback clickHandle;
  final VoidCallback longPressHandle;
  final Goods goods;
  @override
  Widget build(BuildContext context) {
    var children = <Widget>[];
    children.add(Expanded(
        child: WGTextBorderBtn(
      clickHandle,
      longPressHandle,
      title: "我要分享",
      style: TextStyle(
        fontSize: 13,
        color: HexColor.fromHex("64CE61"),
      ),
    )));
    if (goods.showCart && goods.showCart) {
      children.add(Padding(
        padding: EdgeInsets.only(left: 15),
        child: Icon(
          Icons.add_shopping_cart,
          color: HexColor.fromHex("3564a0"),
        ),
      ));
    }
    return Row(
      children: children,
      mainAxisAlignment: MainAxisAlignment.start,
    );
  }
}
