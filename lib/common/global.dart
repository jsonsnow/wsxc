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
    } else {
      profile.token =
          'OUM1NzQwMzdCQUQ0ODc2REM1RTdDRDBFMEIxMzZDRTg1RDY1RjRGMkNDRkNGMDMyRkYxN0U1OEYwODRCOTVDNEIzMzRBNDNGNTEyREE4ODczRjkzNThCN0JDMkY5MkFF';
      Global.saveProfile();
    }
    Net.init();
  }

  static saveProfile() =>
      _preferences.setString('profile', jsonEncode(profile.toJson()));
}
