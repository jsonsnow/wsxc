// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'price.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Price _$PriceFromJson(Map<String, dynamic> json) {
  return Price()
    ..id = json['id'] as String
    ..permission = json['permission'] as num
    ..priceType = json['priceType'] as num
    ..tagIds = json['tagIds'] as List
    ..value = json['value'] as num;
}

Map<String, dynamic> _$PriceToJson(Price instance) => <String, dynamic>{
      'id': instance.id,
      'permission': instance.permission,
      'priceType': instance.priceType,
      'tagIds': instance.tagIds,
      'value': instance.value
    };
