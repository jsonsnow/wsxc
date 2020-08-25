import 'package:flutter/material.dart';
import 'package:wsxc/common/funs.dart';
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
        children: _build(),
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
      ),
    );
  }

  List<Widget> _build() {
    var chirldrens = <Widget>[];
    var divider = Row(
      children: [
        Expanded(
          child: Divider(),
          flex: 2,
        ),
        Expanded(
          child: Text(
            '商品属性',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.grey, fontSize: 12),
          ),
          flex: 1,
        ),
        Expanded(
          child: Divider(),
          flex: 2,
        ),
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
        Container(
          //decoration: BoxDecoration(color: Colors.red),
          padding: EdgeInsets.only(top: 8, left: 0),
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
    print('formats');
    if (goods.formats != null && goods.formats.length > 0) {
      chirldrens.add(
        Padding(
          padding: EdgeInsets.only(top: 8),
          child: _buildFormats(),
        ),
      );
    }
    print('colors');
    if (goods.colors != null && goods.colors.length > 0) {
      chirldrens.add(
        Padding(
          padding: EdgeInsets.only(top: 8),
          child: _buildColors(),
        ),
      );
    }
    print('noteArr');
    if (goods.noteArr != null && goods.noteArr.length > 0) {
      chirldrens.add(
        Padding(
          padding: EdgeInsets.only(top: 5, bottom: 8),
          child: _buildNotes(),
        ),
      );
    }
    return chirldrens;
  }

  Widget _buildSearchCode() {
    return DefaultTextStyle(
      style: TextStyle(color: Colors.grey, fontSize: 12),
      child: Row(
        children: [
          Text('搜索码：'),
          Padding(
            padding: EdgeInsets.only(left: 0),
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
        '标签:',
        style: TextStyle(color: Colors.grey, fontSize: 12),
      ),
    );
    childrens.addAll(
      goods.tags.map((tag) {
        return IconTextBtnWidget(string: tag.tagName);
      }).toList(),
    );
    return Wrap(
      spacing: 5,
      runSpacing: 5,
      alignment: WrapAlignment.start,
      crossAxisAlignment: WrapCrossAlignment.center,
      textDirection: TextDirection.ltr,
      direction: Axis.horizontal,
      children: childrens,
    );
  }

  Widget _buildPrices() {
    return Wrap(
      spacing: 5,
      runSpacing: 5,
      crossAxisAlignment: WrapCrossAlignment.center,
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
        '规格:',
        style: TextStyle(color: Colors.grey, fontSize: 12),
      ),
    );
    childrens.addAll(goods.formats.map((format) {
      return IconTextBtnWidget(string: format["formatName"]);
    }).toList());
    return Wrap(
      spacing: 5,
      runSpacing: 5,
      alignment: WrapAlignment.start,
      crossAxisAlignment: WrapCrossAlignment.center,
      textDirection: TextDirection.ltr,
      direction: Axis.horizontal,
      children: childrens,
    );
  }

  Widget _buildColors() {
    var childrens = <Widget>[];
    childrens.add(
      Text(
        '颜色:',
        style: TextStyle(color: Colors.grey, fontSize: 12),
      ),
    );
    childrens.addAll(goods.colors.map((format) {
      return IconTextBtnWidget(string: format["formatName"]);
    }).toList());
    return Wrap(
      spacing: 5,
      runSpacing: 5,
      alignment: WrapAlignment.start,
      crossAxisAlignment: WrapCrossAlignment.center,
      textDirection: TextDirection.ltr,
      direction: Axis.horizontal,
      children: childrens,
    );
  }

  Widget _buildNotes() {
    var array = goods.noteArr.map((note) {
      return Container(
        padding: EdgeInsets.fromLTRB(10, 3, 15, 3),
        height: 20,
        decoration: BoxDecoration(color: HexColor.fromHex("EFEFF4")),
        child: Builder(builder: (context) {
          var children = <Widget>[];
          if (goods.is_my_album) {
            children.add(
              Padding(
                padding: EdgeInsets.only(right: 5),
                child: permissionIcon(note.permission),
              ),
            );
          }
          children.add(
            Expanded(
              child: Text(
                note.value,
                style: TextStyle(fontSize: 11, color: Colors.grey),
              ),
            ),
          );
          return Row(
            children: children,
          );
        }),
      );
    }).toList();
    return Wrap(
      runSpacing: 3,
      children: array,
    );
  }

  Image permissionIcon(num permission) {
    if (permission.toInt() == 0) {
      return Image.asset('imgs/2.0x/price_public_icon.png', scale: 2);
    } else if (permission.toInt() == 1) {
      return Image.asset('imgs/2.0x/price_private_icon.png', scale: 2);
    } else if (permission.toInt() == 2) {
      return Image.asset('imgs/2.0x/price_group_icon.png', scale: 2);
    } else {
      return Image.asset('imgs/2.0x/price_group_icon.png', scale: 2);
    }
  }
}
