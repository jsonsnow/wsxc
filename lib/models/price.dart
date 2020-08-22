import 'package:json_annotation/json_annotation.dart';

part 'price.g.dart';

@JsonSerializable()
class Price {
    Price();

    String id;
    num permission;
    num priceType;
    List tagIds;
    num value;
    
    factory Price.fromJson(Map<String,dynamic> json) => _$PriceFromJson(json);
    Map<String, dynamic> toJson() => _$PriceToJson(this);
}
