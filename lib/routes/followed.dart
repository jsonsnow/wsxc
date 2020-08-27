import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wsxc/component/search_bar.dart';

class FollowedRouter extends StatefulWidget {
  @override
  _FollowedRouterState createState() {
    return _FollowedRouterState();
  }
}

class _FollowedRouterState extends State<FollowedRouter> {
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
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SearchBarView(
                  showImageSearch: false,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
