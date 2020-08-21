import 'package:flutter/material.dart';
import 'package:wsxc/common/funs.dart';
import 'package:wsxc/models/index.dart';

class HomeCellUserWidget extends StatelessWidget {
  HomeCellUserWidget({Key key, this.goods}) : super(key: key);
  final Goods goods;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 18, top: 8),
          child: gmAvatar(
            goods.user_icon,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 15),
          child: Row(
            children: <Widget>[
              Text(
                goods.shop_name,
                style: TextStyle(color: Colors.blue, fontSize: 16),
              ),
              Padding(
                padding: EdgeInsets.only(top: 24),
                child: Text(goods.share_time),
              )
            ],
          ),
        ),
      ],
    );
  }
}
