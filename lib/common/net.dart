import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class Net {
  Net([this.context]) {
    _options = Options(extra: {'context': context});
  }

  BuildContext context;
  Options _options;
  static Dio dio = Dio(BaseOptions(baseUrl: ''));

  static void init() {
    dio.options.queryParameters["token"] = 'https://www.wegoa.com/';
  }
}
