import 'package:json_annotation/json_annotation.dart';

part 'goodTags.g.dart';

@JsonSerializable()
class GoodTags {
    GoodTags();

    num tagId;
    String tagName;
    
    factory GoodTags.fromJson(Map<String,dynamic> json) => _$GoodTagsFromJson(json);
    Map<String, dynamic> toJson() => _$GoodTagsToJson(this);
}
