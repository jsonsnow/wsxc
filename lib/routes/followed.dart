import 'package:flukit/flukit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wsxc/common/net.dart';
import 'package:wsxc/component/search_bar.dart';
import 'package:wsxc/widgets/flower/flower_cell.dart';

class FollowedRouter extends StatefulWidget {
  @override
  _FollowedRouterState createState() {
    return _FollowedRouterState();
  }
}

class _FollowedRouterState extends State<FollowedRouter> {
  String searchValue = '';
  @override
  Widget build(BuildContext context) {
    return Material(
      child: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text('关注'),
        ),
        child: GestureDetector(
            behavior: HitTestBehavior.translucent,
            onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
            child: InfiniteListView<dynamic>(
              onRetrieveData: (page, items, refresh) async {
                var shops = await fetchFlowerData(refresh, page);
                items.addAll(shops);
                return shops.length > 0 ? true : false;
              },
              itemBuilder: (list, index, ctx) {
                print("list: $list");
                return FlowerCell(
                  shop: list[index],
                );
              },
            )),
      ),
    );
  }

  Future<List<dynamic>> fetchFlowerData(bool refresh, int page) async {
    var r = await Net(context).flower(page: page, searchValue: searchValue);
    var shops = r['result']['shop_list'] as List;
    print('shops:$shops');
    return shops.toList();
  }
}
