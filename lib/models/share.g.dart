// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'share.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Share _$ShareFromJson(Map<String, dynamic> json) {
  return Share()
    ..cover = json['cover'] as String
    ..path = json['path'] as String
    ..miniappTitle = json['miniappTitle'] as String
    ..miniimage = json['miniimage'] as String
    ..link = json['link'] as String
    ..miniappName = json['miniappName'] as String
    ..title = json['title'] as String
    ..desc = json['desc'] as String
    ..miniCode = json['miniCode'] as String;
}

Map<String, dynamic> _$ShareToJson(Share instance) => <String, dynamic>{
      'cover': instance.cover,
      'path': instance.path,
      'miniappTitle': instance.miniappTitle,
      'miniimage': instance.miniimage,
      'link': instance.link,
      'miniappName': instance.miniappName,
      'title': instance.title,
      'desc': instance.desc,
      'miniCode': instance.miniCode
    };
