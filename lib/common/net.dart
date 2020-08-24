import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:wsxc/common/global.dart';


class Net {
  Net([this.context]) {
    _options = Options(extra: {'context': context});
  }

  BuildContext context;
  Options _options;
  static Dio dio = Dio(BaseOptions(baseUrl: ''));

  static void init() {
    dio.options.headers["token"] = Global.profile.token;
  }
}
