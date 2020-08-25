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
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 5),
          child: gmAvatar(
            goods.user_icon,
            width: 45,
            height: 45,
            borderRadius: BorderRadius.circular(22.5),
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 15, top: 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                goods.shop_name,
                style: TextStyle(color: Colors.blue, fontSize: 14),
              ),
              Padding(
                padding: EdgeInsets.only(top: 5),
                child: Builder(
                  builder: (context) {
                    var children = <Widget>[];
                    children.add(
                      Text(goods.time,
                          style: TextStyle(color: Colors.grey, fontSize: 10)),
                    );
                    if (goods.hasFrom()) {
                      children.add(Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Row(
                          children: [
                            Text(
                              goods.fromText() ?? "",
                              style: TextStyle(
                                  fontSize: 11,
                                  color: HexColor.fromHex('5B6E96')),
                            ),
                            Icon(
                              Icons.lock_outline,
                              color: Colors.grey,
                              size: 12,
                            )
                          ],
                        ),
                      ));
                    }
                    return Row(children: children);
                  },
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
