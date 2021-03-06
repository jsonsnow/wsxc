import 'dart:io';
import 'package:dio/adapter.dart';
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
  static Dio dio = Dio(BaseOptions(baseUrl: 'https://www.wegoab.com/'));

  static void init() {
    dio.options.headers["token"] = Global.profile.token;
    dio.options.extra['token'] = Global.profile.token;
    (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
        (client) {
      client.findProxy = (uri) {
        return 'PROXY 10.10.11.107:8888';
      };
      client.badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
    };
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

  Future<Map<String, dynamic>> flower(
      {int page = 1, String searchValue = ''}) async {
    print('start get flower');
    var r = await dio.get('service/album/get_album_list.jsp?act=attention',
        queryParameters: {
          "page_index": page,
          'search_value': searchValue,
          "token": Global.profile.token
        });
    return r.data;
  }
}
