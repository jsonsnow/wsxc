import 'package:flutter/material.dart';
import 'package:wsxc/models/index.dart';

class HomeCell extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeCellState();
  }
}

class _HomeCellState extends State<HomeCell> {
  Goods goods;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(top: 8),
        child: Column(
          children: [],
        ));
  }
}
