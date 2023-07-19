import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:netease_cloud_music/base.dart';
part 'app_token.freezed.dart';
part 'app_token.g.dart';

/// 用户登录信息
@freezed
class AppToken with _$AppToken {
  const factory AppToken({
    @Default('') String token,
    @JsonAlwaysNum() @Default(0) num code,
    @JsonAlwaysString() @Default('') String userId,
    @JsonAlwaysString() @Default('') String createTime,
    @Default('') String cookie,
  }) = _AppToken;
  factory AppToken.fromJson(Map<String, Object?> json) =>
      _$AppTokenFromJson(json);
}
