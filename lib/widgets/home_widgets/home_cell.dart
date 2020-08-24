import 'package:flutter/material.dart';
import 'package:wsxc/common/funs.dart';
import 'package:wsxc/component/expandable_text.dart';
import 'package:wsxc/component/flow_item.dart';
import 'package:wsxc/models/index.dart';
import 'package:wsxc/widgets/home_widgets/goods_remark.dart';
import 'package:wsxc/widgets/home_widgets/home_cell_user.dart';

class HomeCell extends StatefulWidget {
  HomeCell(this.goods);
  @override
  State<StatefulWidget> createState() {
    return _HomeCellState();
  }

  final Goods goods;
}

class _HomeCellState extends State<HomeCell> {
  Goods goods;
  @override
  Widget build(BuildContext context) {
    //print("goods:${goods.toJson()}");
    return Padding(
        padding: EdgeInsets.only(top: 8, left: 24),
        child: Column(
          children: [
            HomeCellUserWidget(goods: goods),
            // Container(
            //   padding: EdgeInsets.fromLTRB(120, 20, 20, 15),
            //   child: Column(
            //     children: [
            //       ExpandabelText(
            //         text: goods.title ?? '',
            //         maxLinex: 5,
            //       ),
            //       goods.imgs.length > 0
            //           ? CLFlow(
            //               count: goods.imgs.length,
            //               children: goods.imgs.map((e) => gmAvatar(e)))
            //           : null,
            //       GoodsRemarkWidget(goods: goods)
            //     ],
            //   ),
            // )
          ],
        ));
  }
}
