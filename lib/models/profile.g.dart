part of 'profile.dart';

Profile _$ProfileFromJson(Map<String, dynamic> json) {
  return Profile()
    ..token = json['token'] as String
    ..locale = json['lastLogin'] as String
    ..locale = json['locale'] as String
    ..theme = json['theme'] as num;
}

Map<String, dynamic> _$ProfileToJson(Profile instance) => <String, dynamic>{
      'token': instance.token,
      'theme': instance.theme,
      'lastLogin': instance.lastLogin,
      'locale': instance.locale
    };
