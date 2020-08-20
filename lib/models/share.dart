import 'package:json_annotation/json_annotation.dart';

part 'share.g.dart';

@JsonSerializable()
class Share {
    Share();

    String cover;
    String path;
    String miniappTitle;
    String miniimage;
    String link;
    String miniappName;
    String title;
    String desc;
    String miniCode;
    
    factory Share.fromJson(Map<String,dynamic> json) => _$ShareFromJson(json);
    Map<String, dynamic> toJson() => _$ShareToJson(this);
}
