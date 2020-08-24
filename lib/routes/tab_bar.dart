import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:wsxc/routes/index.dart';

class TabBarCtr extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TabBarCtrState();
  }
}

class _TabBarCtrState extends State<TabBarCtr> {
  int _currentIndex = 0;
  var _controller = PageController(initialPage: 0);
  final _bottomDefaultIcons = [
    "wsxc_home_default",
    'album_followed_default',
    'wsxc_order_default',
    'wsxc_catch_pic_default',
    'wsxc_user_default'
  ];
  final _bottomSelectIcons = [
    "wsxc_home_select",
    'album_followed_select',
    'wsxc_order_select',
    'wsxc_catch_pic_select',
    'wsxc_user_select'
  ];
  final _bottomSelectNavigationColor = Color(0x44BE02);
  final _bottomDefaultNavigationColor = Color(0xC4C4C4);
  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        children: [
          HomeRouter(),
          FollowedRouter(),
          OrderRouter(),
          CatchPicRouter(),
          UserRouter()
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Image.asset(_bottomDefaultIcons[0]),
              title: Text(
                '相册动态',
                style: TextStyle(
                    color: _currentIndex == 0
                        ? _bottomSelectNavigationColor
                        : _bottomDefaultNavigationColor),
              )),
          BottomNavigationBarItem(
              icon: Image.asset(_bottomDefaultIcons[1]),
              title: Text(
                '关注',
                style: TextStyle(
                    color: _currentIndex == 1
                        ? _bottomSelectNavigationColor
                        : _bottomDefaultNavigationColor),
              )),
          BottomNavigationBarItem(
              icon: Image.asset(_bottomDefaultIcons[2]),
              title: Text(
                '开单',
                style: TextStyle(
                    color: _currentIndex == 2
                        ? _bottomSelectNavigationColor
                        : _bottomDefaultNavigationColor),
              )),
          BottomNavigationBarItem(
              icon: Image.asset(_bottomDefaultIcons[3]),
              title: Text(
                '批量抓图',
                style: TextStyle(
                    color: _currentIndex == 3
                        ? _bottomSelectNavigationColor
                        : _bottomDefaultNavigationColor),
              )),
          BottomNavigationBarItem(
            icon: Image.asset(_bottomDefaultIcons[4]),
            title: Text(
              '我',
              style: TextStyle(
                  color: _currentIndex == 4
                      ? _bottomSelectNavigationColor
                      : _bottomDefaultNavigationColor),
            ),
            activeIcon: Image.asset(_bottomSelectIcons[4]),
          ),
        ],
        currentIndex: _currentIndex,
        onTap: (index) {
          _controller.jumpToPage(index);
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
