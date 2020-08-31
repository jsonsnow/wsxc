import 'dart:io';
import 'package:dio/adapter.dart';
import 'package:dio/adapter_browser.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:wsxc/common/global.dart';
import 'package:wsxc/models/index.dart';

class Net {
  Net([this.context]) {
    _options = Options(extra: {'context': context});
  }

  BuildContext context;
  Options _options;
  static Dio dio = Dio(BaseOptions(baseUrl: 'http://localhost:5050/'));

  static void init() {
    dio.options.headers["token"] = Global.profile.token;
    dio.httpClientAdapter = BrowserHttpClientAdapter();
    // (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
    //     (client) {
    //   // client.findProxy = (uri) {
    //   //   return 'PROXY 10.10.11.107:8888';
    //   // };
    //   client.badCertificateCallback =
    //       (X509Certificate cert, String host, int port) => true;
    // };
  }

  Future<Map<String, dynamic>> home(
      {String searchValue,
      String searchImg,
      String requestDataType,
      num timestamp}) async {
    print('start get home');
    var r = await dio.get<Map<String, dynamic>>("album/moments");
    // print('home data: $r');
    return r.data;
  }
}
