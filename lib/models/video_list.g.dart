// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VideoListEntity _$$_VideoListEntityFromJson(Map<String, dynamic> json) =>
    _$_VideoListEntity(
      id: json['id'] == null
          ? '0'
          : const JsonAlwaysString().fromJson(json['id']),
      title: json['title'] as String? ?? '',
      userName: json['userName'] as String? ?? '',
      userPic: json['userPic'] as String? ?? '',
      coverUrl: json['coverUrl'] as String? ?? '',
      playUrl: json['playUrl'] as String? ?? '',
      duration: json['duration'] == null
          ? '00:00'
          : const JsonAlwaysString().fromJson(json['duration']),
    );

Map<String, dynamic> _$$_VideoListEntityToJson(_$_VideoListEntity instance) =>
    <String, dynamic>{
      'id': const JsonAlwaysString().toJson(instance.id),
      'title': instance.title,
      'userName': instance.userName,
      'userPic': instance.userPic,
      'coverUrl': instance.coverUrl,
      'playUrl': instance.playUrl,
      'duration': const JsonAlwaysString().toJson(instance.duration),
    };
