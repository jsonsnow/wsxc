import 'package:json_annotation/json_annotation.dart';

part 'goods.g.dart';

@JsonSerializable()
class Goods {
    Goods();

    String share_time;
    bool is_added;
    List formats;
    String link;
    String title;
    List colors;
    String videoURL;
    String videoUrl;
    bool is_my_album;
    String user_icon;
    Map<String,dynamic> from;
    Map<String,dynamic> sku;
    num digital_watermark;
    bool normal;
    List imgs;
    String watermark;
    String old_share_time;
    String mark_code;
    num time_stamp;
    bool is_vip;
    String goods_id;
    String miniapp_name;
    num themeType;
    String shop_name;
    bool isShowStock;
    String miniapp_path;
    String shop_id;
    List subimgsSrc;
    num isTop;
    List addedWatermarks;
    bool negativeStock;
    List subimgs;
    String time;
    List imgsSrc;
    String old_time;
    
    factory Goods.fromJson(Map<String,dynamic> json) => _$GoodsFromJson(json);
    Map<String, dynamic> toJson() => _$GoodsToJson(this);
}