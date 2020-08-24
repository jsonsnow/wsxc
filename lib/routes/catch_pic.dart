import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CatchPicRouter extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CatchPicRouterState();
  }
}

class _CatchPicRouterState extends State<CatchPicRouter> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text('抓图'),
        ),
        child: Center(
          child: Text('抓图'),
        ),
      ),
    );
  }
}
