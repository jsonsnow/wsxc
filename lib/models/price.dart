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
      return Image.asset('price_public_icon');
    } else if (permission.toInt() == 1) {
      return Image.asset('price_private_icon');
    } else if (permission.toInt() == 2) {
      return Image.asset('price_group_icon');
    } else {
      return Image.asset('price_group_icon');
    }
  }
}
