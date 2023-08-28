// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banner_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BannerEntity _$$_BannerEntityFromJson(Map<String, dynamic> json) =>
    _$_BannerEntity(
      pic: json['pic'] as String? ?? '',
      typeTitle: json['typeTitle'] as String? ?? '',
      titleColor: json['titleColor'] == null
          ? Colors.black
          : const JsonAlwaysColor().fromJson(json['titleColor']),
      bannerId: json['bannerId'] as String? ?? '',
      url: json['url'] as String? ?? '',
    );

Map<String, dynamic> _$$_BannerEntityToJson(_$_BannerEntity instance) =>
    <String, dynamic>{
      'pic': instance.pic,
      'typeTitle': instance.typeTitle,
      'titleColor': const JsonAlwaysColor().toJson(instance.titleColor),
      'bannerId': instance.bannerId,
      'url': instance.url,
    };
