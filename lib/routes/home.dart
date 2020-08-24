import 'package:flukit/flukit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wsxc/common/index.dart';
import 'package:wsxc/models/index.dart';
import 'package:wsxc/widgets/home_widgets/home_cell.dart';

class HomeRouter extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeRouterState();
  }
}

class _HomeRouterState extends State<HomeRouter> {
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
    fetchHomeData(false);
    return InfiniteListView<Goods>(
        onRetrieveData: (int page, List<Goods> items, bool refresh) async {
      return true;
    }, itemBuilder: (List list, int index, BuildContext ctx) {
      return HomeCell(list[index]);
    });
  }

  fetchHomeData(bool refresh) async {
    var r = await Net(context).home();
    var items = r['items'] as List<dynamic>;
  }
}
