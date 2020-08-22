import 'package:json_annotation/json_annotation.dart';

part 'goodsNote.g.dart';

@JsonSerializable()
class GoodsNote {
    GoodsNote();

    String id;
    num permission;
    String value;
    
    factory GoodsNote.fromJson(Map<String,dynamic> json) => _$GoodsNoteFromJson(json);
    Map<String, dynamic> toJson() => _$GoodsNoteToJson(this);
}
