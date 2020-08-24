import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OrderRouter extends StatefulWidget {
  @override
  _OrderRouterState createState() {
    return _OrderRouterState();
  }
}

class _OrderRouterState extends State<OrderRouter> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text('开单'),
        ),
        child: Center(
          child: Text('开单'),
        ),
      ),
    );
  }
}
