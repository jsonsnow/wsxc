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
    return Scaffold(
      appBar: AppBar(
        title: Text('抓图'),
      ),
      body: Center(
        child: Text('抓图'),
      ),
    );
  }
}
