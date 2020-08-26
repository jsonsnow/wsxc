import 'package:flutter/material.dart';
import 'package:wsxc/common/funs.dart';
import 'package:wsxc/component/expandable_text.dart';
import 'package:wsxc/component/flow_item.dart';
import 'package:wsxc/models/index.dart';
import 'package:wsxc/widgets/home_widgets/goods_remark.dart';
import 'package:wsxc/widgets/home_widgets/home_cell_user.dart';
import 'package:wsxc/widgets/home_widgets/home_funs_btn.dart';
import 'package:wsxc/widgets/home_widgets/home_share_btn.dart';

class HomeCell extends StatefulWidget {
  HomeCell(this.goods) : super(key: ValueKey(goods.goods_id));
  @override
  State<StatefulWidget> createState() {
    return _HomeCellState(this.goods);
  }

  final Goods goods;
}

class _HomeCellState extends State<HomeCell> {
  _HomeCellState(this.goods);
  Goods goods;
  @override
  Widget build(BuildContext context) {
    //print("goods:${goods.toJson()}");
    return Padding(
      padding: EdgeInsets.only(top: 8, left: 20),
      child: Column(
        children: [
          HomeCellUserWidget(goods: goods),
          Container(
            padding: EdgeInsets.fromLTRB(60, 5, 20, 15),
            child: Builder(
              builder: (context) {
                var children = <Widget>[];
                var title = ExpandabelText(
                  text: goods.title ?? '',
                  maxLinex: 5,
                  style: TextStyle(color: Colors.black, fontSize: 13),
                );
                children.add(title);
                if (goods.imgs.length > 0) {
                  children.add(Padding(
                    padding: EdgeInsets.only(top: 5),
                    child: CLFlow(
                      count: goods.imgs.length,
                      children: goods.imgs.map((e) => gmAvatar(e)).toList(),
                    ),
                  ));
                }
                children.add(GoodsRemarkWidget(goods: goods));
                children.add(
                  Padding(
                    padding: EdgeInsets.only(top: 5),
                    child: HomeFunsWidget(goods: goods),
                  ),
                );
                children.add(Padding(
                  padding: EdgeInsets.only(top: 8),
                  child: ShareBtnWidget(
                    goods: goods,
                  ),
                ));
                return Column(
                  children: children,
                  crossAxisAlignment: CrossAxisAlignment.start,
                );
              },
            ),
          ),
          Divider()
        ],
      ),
    );
  }
}
