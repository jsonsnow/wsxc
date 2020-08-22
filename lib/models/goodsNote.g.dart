// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'goodsNote.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GoodsNote _$GoodsNoteFromJson(Map<String, dynamic> json) {
  return GoodsNote()
    ..id = json['id'] as String
    ..permission = json['permission'] as num
    ..value = json['value'] as String;
}

Map<String, dynamic> _$GoodsNoteToJson(GoodsNote instance) => <String, dynamic>{
      'id': instance.id,
      'permission': instance.permission,
      'value': instance.value
    };
