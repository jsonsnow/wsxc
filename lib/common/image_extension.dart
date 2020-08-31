import 'dart:convert';
import 'package:flutter/material.dart';

extension ImageExtension on Image {
  static Image fromBase64(String imageData, double width, double height) {
    return Image.memory(
      base64.decode(imageData.split(",")[1]),
      width: width,
      height: height,
    );
  }
}
