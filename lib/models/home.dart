import 'package:json_annotation/json_annotation.dart';
import "shop.dart";
import "goods.dart";
import "share.dart";
part 'home.g.dart';

@JsonSerializable()
class Home {
    Home();

    bool photo_search_check;
    Shop shop;
    bool is_vip;
    Map<String,dynamic> increasePriceConfig;
    String banner;
    List<Goods> goods_list;
    String share_title;
    num left_day;
    bool show_tips;
    bool online;
    String album_qrcode;
    bool search_acceleration;
    Share share;
    bool showCart;
    List default_watermark;
    Map<String,dynamic> user;
    Map<String,dynamic> recentOrder;
    
    factory Home.fromJson(Map<String,dynamic> json) => _$HomeFromJson(json);
    Map<String, dynamic> toJson() => _$HomeToJson(this);
}
