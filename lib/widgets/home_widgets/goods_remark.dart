import 'package:flutter/material.dart';
import 'package:wsxc/models/index.dart';

class GoodsRemarkWidget extends StatelessWidget {
  final Goods goods;
  GoodsRemarkWidget({Key key, @required this.goods}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 8),
      child: Column(
        children: <Widget>[
          Row(
            children: [
              Divider(),
              Text(
                '商品属性',
                style: TextStyle(color: Colors.grey, fontSize: 12),
              ),
              Divider()
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 18, bottom: 18),
          )
        ],
      ),
    );
  }

  Widget _buildSearchCode() {
    DefaultTextStyle(
      style: TextStyle(color: Colors.grey, fontSize: 12),
      child: Row(
        children: [
          Text('搜索码'),
          Padding(
            padding: EdgeInsets.only(left: 12),
            child: Text(goods.mark_code),
          )
        ],
      ),
    );
  }
}
