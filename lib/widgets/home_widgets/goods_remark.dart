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
      child: Column(children: _build()),
    );
  }

  List<Widget> _build() {
    var chirldrens = <Widget>[];
    var divider = Row(
      children: [
        Divider(),
        Text(
          '商品属性',
          style: TextStyle(color: Colors.grey, fontSize: 12),
        ),
        Divider()
      ],
    );

    chirldrens.add(divider);
    if (goods.mark_code != null && goods.mark_code.length > 0) {
      chirldrens.add(
        Padding(
          padding: EdgeInsets.only(top: 8),
          child: _buildSearchCode(),
        ),
      );
    }
    print('tags');
    if (goods.tags != null && goods.tags.length > 0) {
      chirldrens.add(
        Padding(
          padding: EdgeInsets.only(top: 8),
          child: _buildTags(),
        ),
      );
    }
    print('price');
    if (goods.priceArr != null && goods.priceArr.length > 0) {
      chirldrens.add(
        Padding(
          padding: EdgeInsets.only(top: 8),
          child: _buildPrices(),
        ),
      );
    }
    // print('formats');
    // if (goods.formats != null && goods.formats.length > 0) {
    //   chirldrens.add(
    //     Padding(
    //       padding: EdgeInsets.only(top: 8),
    //       child: _buildFormats(),
    //     ),
    //   );
    // }
    // print('colors');
    // if (goods.colors.length > 0) {
    //   chirldrens.add(
    //     Padding(
    //       padding: EdgeInsets.only(top: 18),
    //       child: _buildColors(),
    //     ),
    //   );
    // }
    // print('noteArr');
    // if (goods.noteArr.length > 0) {
    //   chirldrens.add(
    //     Padding(
    //       padding: EdgeInsets.only(top: 5, bottom: 8),
    //       child: _buildNotes(),
    //     ),
    //   );
    // }
    return chirldrens;
  }

  Widget _buildSearchCode() {
    return DefaultTextStyle(
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
    return Wrap(
      spacing: 8,
      runSpacing: 12,
      children: childrens,
      direction: Axis.horizontal,
    );
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
