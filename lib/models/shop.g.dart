// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shop.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Shop _$ShopFromJson(Map<String, dynamic> json) {
  return Shop()
    ..wechat_id = json['wechat_id'] as String
    ..shop_id = json['shop_id'] as String
    ..total_goods = json['total_goods'] as num
    ..wechat_qrcode = json['wechat_qrcode'] as String
    ..wechat_icon = json['wechat_icon'] as String
    ..is_vip = json['is_vip'] as bool
    ..new_goods = json['new_goods'] as num
    ..user_icon = json['user_icon'] as String
    ..phone_number = json['phone_number'] as String
    ..follow_num = json['follow_num'] as num
    ..shop_name = json['shop_name'] as String
    ..shop_desc = json['shop_desc'] as String;
}

Map<String, dynamic> _$ShopToJson(Shop instance) => <String, dynamic>{
      'wechat_id': instance.wechat_id,
      'shop_id': instance.shop_id,
      'total_goods': instance.total_goods,
      'wechat_qrcode': instance.wechat_qrcode,
      'wechat_icon': instance.wechat_icon,
      'is_vip': instance.is_vip,
      'new_goods': instance.new_goods,
      'user_icon': instance.user_icon,
      'phone_number': instance.phone_number,
      'follow_num': instance.follow_num,
      'shop_name': instance.shop_name,
      'shop_desc': instance.shop_desc
    };
