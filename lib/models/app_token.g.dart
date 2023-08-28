// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_token.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AppToken _$$_AppTokenFromJson(Map<String, dynamic> json) => _$_AppToken(
      code: json['code'] == null
          ? 0
          : const JsonAlwaysNum().fromJson(json['code']),
      userId: json['userId'] == null
          ? ''
          : const JsonAlwaysString().fromJson(json['userId']),
      createTime: json['createTime'] == null
          ? ''
          : const JsonAlwaysString().fromJson(json['createTime']),
      cookie: json['cookie'] as String? ?? '',
    );

Map<String, dynamic> _$$_AppTokenToJson(_$_AppToken instance) =>
    <String, dynamic>{
      'code': const JsonAlwaysNum().toJson(instance.code),
      'userId': const JsonAlwaysString().toJson(instance.userId),
      'createTime': const JsonAlwaysString().toJson(instance.createTime),
      'cookie': instance.cookie,
    };
