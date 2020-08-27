import 'package:flutter/material.dart';
import 'package:wsxc/common/funs.dart';

class HomeHeaderView extends StatefulWidget {
  HomeHeaderView({Key key, this.backUrl, this.title, this.iconUrl})
      : super(key: key);
  final String backUrl;
  final String title;
  final String iconUrl;
  @override
  State<StatefulWidget> createState() {
    return _HomeHeaderViewState(
        backUrl: backUrl, title: title, iconUrl: iconUrl);
  }
}

class _HomeHeaderViewState extends State<HomeHeaderView> {
  _HomeHeaderViewState({this.backUrl, this.title, this.iconUrl});
  String backUrl;
  String title;
  String iconUrl;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Positioned(
          left: 0,
          right: 0,
          top: 0,
          bottom: 0,
          child: gmAvatar(backUrl,
              height: 200, borderRadius: BorderRadius.circular(0)),
        ),
        Positioned(
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.only(right: 10),
                child: Text(
                  title,
                  style: TextStyle(color: Colors.white, fontSize: 13),
                ),
              ),
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    border: Border.all(width: 3, color: Colors.white)),
                child: gmAvatar(iconUrl,
                    width: 80,
                    height: 80,
                    borderRadius: BorderRadius.circular(40)),
              )
            ],
          ),
          right: 8,
          bottom: 8,
        )
      ],
    );
  }
}
