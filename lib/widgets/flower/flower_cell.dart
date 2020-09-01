import 'package:flutter/material.dart';
import 'package:wsxc/common/funs.dart';

class FlowerCell extends StatelessWidget {
  FlowerCell({Key key, this.shop}) : super(key: key);
  final Map<String, dynamic> shop;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 18, bottom: 0),
      child: Column(children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 25, right: 25),
              child: gmAvatar(shop["user_icon"],
                  width: 60,
                  height: 60,
                  borderRadius: BorderRadius.circular(30)),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        shop["shop_name"],
                        maxLines: 1,
                        style: TextStyle(
                            color: HexColor.fromHex('2e2e2f'), fontSize: 17),
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 8),
                    child: Row(
                      children: [
                        Text(
                          '上新',
                          style: TextStyle(color: Colors.grey, fontSize: 13),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 5, right: 16),
                          child: Text(
                            "${shop["new_goods"]}",
                            style: TextStyle(color: Colors.green, fontSize: 13),
                          ),
                        ),
                        Text(
                          '商品',
                          style: TextStyle(color: Colors.grey, fontSize: 13),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 5, right: 16),
                          child: Text(
                            "${shop["total_goods"]}",
                            style: TextStyle(
                                color: HexColor.fromHex('2e2e2f'),
                                fontSize: 13),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 16),
              child: Icon(Icons.arrow_right_rounded),
            )
          ],
        ),
        Divider()
      ]),
    );
  }
}
