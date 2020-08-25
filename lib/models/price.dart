import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

part 'price.g.dart';

@JsonSerializable()
class Price {
  Price();

  String id;

  ///0:公开，1:私密，2:部分可见,3:不给谁看，4：隐藏
  num permission;
  num priceType;
  List tagIds;
  num value;

  factory Price.fromJson(Map<String, dynamic> json) => _$PriceFromJson(json);
  Map<String, dynamic> toJson() => _$PriceToJson(this);

  Image permissionIcon() {
    if (permission.toInt() == 0) {
      return Image.asset('imgs/2.0x/price_public_icon.png', scale: 2);
    } else if (permission.toInt() == 1) {
      return Image.asset('imgs/2.0x/price_private_icon.png', scale: 2);
    } else if (permission.toInt() == 2) {
      return Image.asset('imgs/2.0x/price_group_icon.png', scale: 2);
    } else {
      return Image.asset('imgs/2.0x/price_group_icon.png', scale: 2);
    }
  }
}
