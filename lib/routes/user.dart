import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserRouter extends StatefulWidget {
  @override
  _UserRouterState createState() {
    return _UserRouterState();
  }
}

class _UserRouterState extends State<UserRouter> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text('我'),
        ),
        child: Center(
          child: Text('我'),
        ),
      ),
    );
  }
}
