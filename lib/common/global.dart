import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:wsxc/common/net.dart';
import 'package:wsxc/models/index.dart';

class Global {
  static SharedPreferences _preferences;
  static Profile profile = Profile();

  static Future init() async {
    WidgetsFlutterBinding.ensureInitialized();
    _preferences = await SharedPreferences.getInstance();
    var _profile = _preferences.getString('profile');
    if (_profile != null) {
      try {
        profile = Profile.fromJson(jsonDecode(_profile));
      } catch (e) {
        debugPrint(e);
      }
    }
    //Net.init();
  }
}
