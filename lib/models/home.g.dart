// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Home _$HomeFromJson(Map<String, dynamic> json) {
  return Home()
    ..photo_search_check = json['photo_search_check'] as bool
    ..shop = json['shop'] == null
        ? null
        : Shop.fromJson(json['shop'] as Map<String, dynamic>)
    ..is_vip = json['is_vip'] as bool
    ..increasePriceConfig = json['increasePriceConfig'] as Map<String, dynamic>
    ..banner = json['banner'] as String
    ..goods_list = (json['goods_list'] as List)
        ?.map(
            (e) => e == null ? null : Goods.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..share_title = json['share_title'] as String
    ..left_day = json['left_day'] as num
    ..show_tips = json['show_tips'] as bool
    ..online = json['online'] as bool
    ..album_qrcode = json['album_qrcode'] as String
    ..search_acceleration = json['search_acceleration'] as bool
    ..share = json['share'] == null
        ? null
        : Share.fromJson(json['share'] as Map<String, dynamic>)
    ..showCart = json['showCart'] as bool
    ..default_watermark = json['default_watermark'] as List
    ..user = json['user'] as Map<String, dynamic>
    ..recentOrder = json['recentOrder'] as Map<String, dynamic>;
}

Map<String, dynamic> _$HomeToJson(Home instance) => <String, dynamic>{
      'photo_search_check': instance.photo_search_check,
      'shop': instance.shop,
      'is_vip': instance.is_vip,
      'increasePriceConfig': instance.increasePriceConfig,
      'banner': instance.banner,
      'goods_list': instance.goods_list,
      'share_title': instance.share_title,
      'left_day': instance.left_day,
      'show_tips': instance.show_tips,
      'online': instance.online,
      'album_qrcode': instance.album_qrcode,
      'search_acceleration': instance.search_acceleration,
      'share': instance.share,
      'showCart': instance.showCart,
      'default_watermark': instance.default_watermark,
      'user': instance.user,
      'recentOrder': instance.recentOrder
    };
