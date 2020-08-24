import 'package:flutter/material.dart';

class FollowedRouter extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FollowedRouterState();
  }
}

class _FollowedRouterState extends State<FollowedRouter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('关注'),
      ),
      body: Center(
        child: Text('关注'),
      ),
    );
  }
}
