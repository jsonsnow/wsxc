import 'package:flutter/material.dart';
import 'package:wsxc/common/funs.dart';
import 'package:wsxc/models/index.dart';

class HomeCellUserWidget extends StatelessWidget {
  HomeCellUserWidget({Key key, @required this.goods}) : super(key: key);
  final Goods goods;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 18),
          child: gmAvatar(
            goods.user_icon,
            width: 50,
            borderRadius: BorderRadius.circular(25),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 15, top: 3),
          child: Row(
            children: <Widget>[
              Text(
                goods.shop_name,
                style: TextStyle(color: Colors.blue, fontSize: 16),
              ),
              Padding(
                padding: EdgeInsets.only(top: 24),
                child: Row(
                  children: [
                    Text(goods.share_time),
                    goods.hasFrom()
                        ? Padding(
                            padding: EdgeInsets.only(left: 15),
                            child: Row(
                              children: [
                                Text(goods.fromText() ?? ""),
                                Icon(Icons.lock)
                              ],
                            ),
                          )
                        : Text('')
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
