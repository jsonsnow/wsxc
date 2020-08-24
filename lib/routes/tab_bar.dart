import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wsxc/routes/index.dart';
import 'package:wsxc/common/index.dart';

class TabBarCtr extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TabBarCtrState();
  }
}

class _TabBarCtrState extends State<TabBarCtr> {
  int _currentIndex = 0;
  final _bottomDefaultIcons = [
    "imgs/wsxc_home_default.png",
    'imgs/album_followed_default.png',
    'imgs/wsxc_order_default.png',
    'imgs/wsxc_catch_pic_default.png',
    'imgs/wsxc_user_default.png'
  ];
  final _bottomSelectIcons = [
    "imgs/wsxc_home_select.png",
    'imgs/album_followed_select.png',
    'imgs/wsxc_order_select.png',
    'imgs/wsxc_catch_pic_select.png',
    'imgs/wsxc_user_select.png'
  ];
  final _bottomSelectNavigationColor = HexColor.fromHex("44BE02");
  final _bottomDefaultNavigationColor = HexColor.fromHex("C4C4C4");

  get activeIcon => null;
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBuilder: (context, index) {
        if (index == 0) return HomeRouter();
        if (index == 1) return FollowedRouter();
        if (index == 2) return OrderRouter();
        if (index == 3) return CatchPicRouter();
        if (index == 4) return UserRouter();
        return HomeRouter();
      },
      tabBar: CupertinoTabBar(
        activeColor: _bottomSelectNavigationColor,
        inactiveColor: _bottomDefaultNavigationColor,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(_bottomDefaultIcons[0]),
            title: Text('相册动态'),
            activeIcon: Image.asset(_bottomSelectIcons[0]),
          ),
          BottomNavigationBarItem(
            icon: Image.asset(_bottomDefaultIcons[1]),
            title: Text('关注'),
            activeIcon: Image.asset(_bottomSelectIcons[1]),
          ),
          BottomNavigationBarItem(
            icon: Image.asset(_bottomDefaultIcons[2]),
            title: Text('开单'),
            activeIcon: Image.asset(_bottomSelectIcons[2]),
          ),
          BottomNavigationBarItem(
            icon: Image.asset(_bottomDefaultIcons[3]),
            title: Text('批量抓图'),
            activeIcon: Image.asset(_bottomSelectIcons[3]),
          ),
          BottomNavigationBarItem(
            icon: Image.asset(_bottomDefaultIcons[4]),
            title: Text('我'),
            activeIcon: Image.asset(_bottomSelectIcons[4]),
          ),
        ],
        // currentIndex: _currentIndex,
        onTap: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
      ),
    );
  }
}
