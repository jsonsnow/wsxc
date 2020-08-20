import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

Widget gmAvatar(String url, Image plcaeholder,
    {double width = 30, double height, BoxFit fit, BorderRadius borderRadius}) {
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
