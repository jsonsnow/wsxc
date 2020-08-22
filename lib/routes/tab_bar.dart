import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:wsxc/routes/home.dart';

class TabBarCtr extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TabBarCtrState();
  }
}

class _TabBarCtrState extends State<TabBarCtr> {
  int _currentIndex = 0;
  var _controller = PageController(initialPage: 0);

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
        children: [HomeRouter()],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [BottomNavigationBarItem(icon: Image.asset('name'))],
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
