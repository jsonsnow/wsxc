// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'goods.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Goods _$GoodsFromJson(Map<String, dynamic> json) {
  return Goods()
    ..share_time = json['share_time'] as String
    ..is_added = json['is_added'] as bool
    ..formats = json['formats'] as List
    ..link = json['link'] as String
    ..title = json['title'] as String
    ..colors = json['colors'] as List
    ..videoURL = json['videoURL'] as String
    ..videoUrl = json['videoUrl'] as String
    ..is_my_album = json['is_my_album'] as bool
    ..user_icon = json['user_icon'] as String
    ..from = json['from'] as Map<String, dynamic>
    ..sku = json['sku'] as Map<String, dynamic>
    ..digital_watermark = json['digital_watermark'] as num
    ..normal = json['normal'] as bool
    ..imgs = json['imgs'] as List
    ..watermark = json['watermark'] as String
    ..old_share_time = json['old_share_time'] as String
    ..mark_code = json['mark_code'] as String
    ..time_stamp = json['time_stamp'] as num
    ..is_vip = json['is_vip'] as bool
    ..goods_id = json['goods_id'] as String
    ..miniapp_name = json['miniapp_name'] as String
    ..themeType = json['themeType'] as num
    ..shop_name = json['shop_name'] as String
    ..isShowStock = json['isShowStock'] as bool
    ..miniapp_path = json['miniapp_path'] as String
    ..shop_id = json['shop_id'] as String
    ..subimgsSrc = json['subimgsSrc'] as List
    ..isTop = json['isTop'] as num
    ..addedWatermarks = json['addedWatermarks'] as List
    ..negativeStock = json['negativeStock'] as bool
    ..subimgs = json['subimgs'] as List
    ..priceArr = (json['priceArr'] as List)
        ?.map(
            (e) => e == null ? null : Price.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..noteArr = (json['noteArr'] as List)
        ?.map((e) =>
            e == null ? null : GoodsNote.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..tags = (json['tags'] as List)
        ?.map((e) =>
            e == null ? null : GoodTags.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..time = json['time'] as String
    ..imgsSrc = json['imgsSrc'] as List
    ..old_time = json['old_time'] as String;
}

Map<String, dynamic> _$GoodsToJson(Goods instance) => <String, dynamic>{
      'share_time': instance.share_time,
      'is_added': instance.is_added,
      'formats': instance.formats,
      'link': instance.link,
      'title': instance.title,
      'colors': instance.colors,
      'videoURL': instance.videoURL,
      'videoUrl': instance.videoUrl,
      'is_my_album': instance.is_my_album,
      'user_icon': instance.user_icon,
      'from': instance.from,
      'sku': instance.sku,
      'digital_watermark': instance.digital_watermark,
      'normal': instance.normal,
      'imgs': instance.imgs,
      'watermark': instance.watermark,
      'old_share_time': instance.old_share_time,
      'mark_code': instance.mark_code,
      'time_stamp': instance.time_stamp,
      'is_vip': instance.is_vip,
      'goods_id': instance.goods_id,
      'miniapp_name': instance.miniapp_name,
      'themeType': instance.themeType,
      'shop_name': instance.shop_name,
      'isShowStock': instance.isShowStock,
      'miniapp_path': instance.miniapp_path,
      'shop_id': instance.shop_id,
      'subimgsSrc': instance.subimgsSrc,
      'isTop': instance.isTop,
      'addedWatermarks': instance.addedWatermarks,
      'negativeStock': instance.negativeStock,
      'subimgs': instance.subimgs,
      'priceArr': instance.priceArr,
      'noteArr': instance.noteArr,
      'tags': instance.tags,
      'time': instance.time,
      'imgsSrc': instance.imgsSrc,
      'old_time': instance.old_time
    };
