import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:wsxc/common/funs.dart';
import 'package:wsxc/component/btn.dart';
import 'package:wsxc/models/goods.dart';

class HomeFunsWidget extends StatelessWidget {
  HomeFunsWidget(
      {Key key,
      @required this.goods,
      this.clickDeleteHandle,
      this.clickSaltOutHandle,
      this.clickDownloadHandle,
      this.clickRefreshHandle,
      this.clickTopHandle,
      this.clickEditHandle})
      : super(key: key);
  final Goods goods;
  final VoidCallback clickDeleteHandle;
  final VoidCallback clickSaltOutHandle;
  final VoidCallback clickDownloadHandle;
  final VoidCallback clickRefreshHandle;
  final VoidCallback clickTopHandle;
  final VoidCallback clickEditHandle;
  @override
  Widget build(BuildContext context) {
    var children = <Widget>[];
    if (goods.is_my_album) {
      children.add(WGTextBtn(clickDeleteHandle, null, title: "删除"));
      children.add(WGTextBtn(clickSaltOutHandle, null, title: "下架"));
    }
    children.add(WGTextBtn(clickDeleteHandle, null, title: "下载"));
    if (goods.is_my_album) {
      children.add(WGTextBtn(clickRefreshHandle, null, title: "刷新"));
      children.add(WGTextBtn(clickTopHandle, null,
          title: goods.isTop.toInt() == 1 ? "取顶" : "置顶"));
    }
    children.add(WGTextBtn(clickEditHandle, null, title: "编辑"));
    if (goods.share_time != null && goods.share_time.length > 0) {
      children.add(Text(
        "${goods.share_time}分享过",
        style: TextStyle(fontSize: 11, color: HexColor.fromHex("FAC019")),
      ));
    }
    return Wrap(
      spacing: 15,
      children: children,
    );
  }
}
