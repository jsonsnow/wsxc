import 'package:flukit/flukit.dart';
import 'package:flutter/material.dart';
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
    return Scaffold(
      appBar: AppBar(
        title: Text('首页'),
      ),
      body: _buildBody(),
      bottomNavigationBar: ,
    );
  }

  Widget _buildBody() {
    return InfiniteListView<Goods>(
        onRetrieveData: (int page, List<Goods> items, bool refresh) async {
      return true;
    }, itemBuilder: (List list, int index, BuildContext ctx) {
      return HomeCell(list[index]);
    });
  }
}
