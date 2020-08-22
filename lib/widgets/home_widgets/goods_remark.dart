import 'package:flutter/material.dart';
import 'package:wsxc/component/icon_text_btn.dart';
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

  Widget _buildTags() {
    var childrens = <Widget>[];
    childrens.add(
      Text(
        '标签：',
        style: TextStyle(color: Colors.grey, fontSize: 12),
      ),
    );
    childrens.addAll(
      goods.tags.map((tag) {
        return IconTextBtnWidget(string: tag.tagName);
      }).toList(),
    );
    return Wrap(spacing: 8, runSpacing: 12, children: childrens);
  }

  Widget _buildPrices() {
    return Wrap(
      spacing: 8,
      runSpacing: 12,
      children: goods.priceArr.map((price) {
        Image icon;
        if (goods.is_my_album) {
          icon = price.permissionIcon();
        }
        return IconTextBtnWidget(
          string: '${price.value}',
          image: icon,
        );
      }).toList(),
    );
  }

  Widget _buildFormats() {
    var childrens = <Widget>[];
    childrens.add(
      Text(
        '规格：',
        style: TextStyle(color: Colors.grey, fontSize: 12),
      ),
    );
    childrens.addAll(goods.formats.map((format) {
      return IconTextBtnWidget(string: format["formatName"]);
    }).toList());
    return Wrap(spacing: 8, runSpacing: 12, children: childrens);
  }

  Widget _buildColors() {
    var childrens = <Widget>[];
    childrens.add(
      Text(
        '规格：',
        style: TextStyle(color: Colors.grey, fontSize: 12),
      ),
    );
    childrens.addAll(goods.colors.map((format) {
      return IconTextBtnWidget(string: format["formatName"]);
    }).toList());
    return Wrap(spacing: 8, runSpacing: 12, children: childrens);
  }

  Widget _buildNotes() {
    var array = goods.noteArr.map((note) {
      return Container(
        padding: EdgeInsets.fromLTRB(15, 3, 15, 3),
        height: 20,
        decoration: BoxDecoration(color: Colors.grey),
        child: Row(
          children: [
            goods.is_my_album ? permissionIcon(note.permission) : null,
            Expanded(
              child: Text(
                note.value,
                style: TextStyle(fontSize: 9, color: Colors.grey),
              ),
            )
          ],
        ),
      );
    }).toList();
    return Wrap(
      runSpacing: 3,
      children: array,
    );
  }

  Image permissionIcon(num permission) {
    if (permission.toInt() == 0) {
      return Image.asset('price_public_icon');
    } else if (permission.toInt() == 1) {
      return Image.asset('price_private_icon');
    } else if (permission.toInt() == 2) {
      return Image.asset('price_group_icon');
    } else {
      return Image.asset('price_group_icon');
    }
  }
}
