import 'package:json_annotation/json_annotation.dart';

part 'shop.g.dart';

@JsonSerializable()
class Shop {
    Shop();

    String wechat_id;
    String shop_id;
    num total_goods;
    String wechat_qrcode;
    String wechat_icon;
    bool is_vip;
    num new_goods;
    String user_icon;
    String phone_number;
    num follow_num;
    String shop_name;
    String shop_desc;
    
    factory Shop.fromJson(Map<String,dynamic> json) => _$ShopFromJson(json);
    Map<String, dynamic> toJson() => _$ShopToJson(this);
}
