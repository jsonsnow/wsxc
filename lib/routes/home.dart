import 'package:flukit/flukit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wsxc/common/index.dart';
import 'package:wsxc/models/index.dart';
import 'package:wsxc/widgets/home_widgets/home_cell.dart';
import 'package:wsxc/widgets/home_widgets/home_header.dart';

class HomeRouter extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeRouterState();
  }
}

class _HomeRouterState extends State<HomeRouter> {
  Map<String, dynamic> album;
  @override
  Widget build(BuildContext context) {
    return Material(
      child: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text('首页'),
        ),
        child: _buildBody(),
      ),
    );
  }

  Widget _buildBody() {
    //fetchHomeData(false);
    return InfiniteListView<Goods>(
      onRetrieveData: (int page, List<Goods> items, bool refresh) async {
        var goods = await fetchHomeData(refresh);
        //print('goods:$goods');
        items.addAll(goods);
        return goods.length > 0 ? true : false;
      },
      itemBuilder: (List list, int index, BuildContext ctx) {
        return HomeCell(list[index]);
      },
      // ignore: missing_return
      headerBuilder: (e, ctx) {
        if (album == null)
          return Container(
            height: 200,
          );
        return Container(
          height: 200,
          child: HomeHeaderView(
            backUrl: album["banner"] ?? "",
            title: album["name"] ?? "",
            iconUrl: album["icon"] ?? "",
          ),
        );
      },
    );
  }

  Future<List<Goods>> fetchHomeData(bool refresh) async {
    var r = await Net(context).home();
    //print('result :$r');
    var items = r['result']['items'] as List;
    album = r['result']['album'];
    print('album:$album');
    //print('items $items');
    return items.map((e) {
      //print('item data: $e');
      Goods good = Goods.fromJson(e);
      //print(good.user_icon);
      return good;
    }).toList();
  }
}
