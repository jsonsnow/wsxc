import 'package:shelf/shelf_io.dart' as shelf_io;
import 'package:shelf_proxy/shelf_proxy.dart';

//前端页面访问本地域名
const String LocalHost = 'localhost';

//前端页面访问本地端口号
const int LocalPort = 5050;

//目标域名，这里我们将要请求火狐的这个地址
const String TargetUrl = 'https://www.wegoab.com';

Future main() async {
  var server = await shelf_io.serve(
    proxyHandler(TargetUrl),
    LocalHost,
    LocalPort,
  );
  // server
  // 添加上跨域的这几个header
  server.defaultResponseHeaders.add('Access-Control-Allow-Headers',
      'Origin, Content-Type, Cookie, X-CSRF-TOKEN, Accept, Authorization, X-XSRF-TOKEN, Access-Control-Allow-Origin');
  server.defaultResponseHeaders.add('Access-Control-Allow-Origin', '*');
  server.defaultResponseHeaders
      .add('Access-Control-Expose-Headers', 'Authorization, authenticated');
  server.defaultResponseHeaders.add('Access-Control-Allow-Credentials', true);
  server.defaultResponseHeaders
      .add('Access-Control-Allow-Methods', 'GET, POST, PATCH, PUT, OPTIONS');
  print('Serving at http://${server.address.host}:${server.port}');
}
