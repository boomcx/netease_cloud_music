import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:netease_cloud_music/base.dart';
part 'banner_entity.freezed.dart';
part 'banner_entity.g.dart';

@freezed
class BannerEntity with _$BannerEntity {
  const factory BannerEntity({
    @Default('') String pic,
    @Default('') String typeTitle,
    @JsonAlwaysColor() @Default(Colors.black) Color titleColor,
    @Default('') String bannerId,
    @Default('') String url,
  }) = _BannerEntity;
  factory BannerEntity.fromJson(Map<String, Object?> json) =>
      _$BannerEntityFromJson(json);
}
