import 'package:flutter/material.dart';

class UserRouter extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _UserRouterState();
  }
}

class _UserRouterState extends State<UserRouter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('我'),
      ),
      body: Center(
        child: Text('我'),
      ),
    );
  }
}
