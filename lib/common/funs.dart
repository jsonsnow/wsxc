import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

Widget gmAvatar(String url,
    {Image plcaeholder,
    double width = 30,
    double height,
    BoxFit fit,
    BorderRadius borderRadius}) {
  if (plcaeholder == null) {
    plcaeholder = Image.asset(
      'imgs/avatar-default.png',
      width: width,
      height: height,
    );
    return ClipRRect(
      borderRadius: borderRadius ?? BorderRadius.circular(2),
      child: CachedNetworkImage(
        imageUrl: url,
        width: width,
        height: height,
        fit: fit,
        placeholder: (context, url) => plcaeholder,
        errorWidget: (context, url, error) => plcaeholder,
      ),
    );
  }
}

extension HexColor on Color {
  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst("#", 'to'));
    return Color(int.parse(buffer.toString(), radix: 16));
  }

  String toHex({bool leadingHashSign = true}) => '${leadingHashSign ? '#' : ''}'
      '${alpha.toRadixString(16).padLeft(2, '0')}'
      '${red.toRadixString(16).padLeft(2, '0')}'
      '${green.toRadixString(16).padLeft(2, '0')}'
      '${blue.toRadixString(16).padLeft(2, '0')}';
}
