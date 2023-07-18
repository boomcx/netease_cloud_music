import 'package:freezed_annotation/freezed_annotation.dart';
import '../base/extensions/json_extension.dart';
part 'video_list.freezed.dart';
part 'video_list.g.dart';

@freezed
class VideoListEntity with _$VideoListEntity {
  const factory VideoListEntity({
    @JsonAlwaysString() @Default('0') String id,
    @Default('') String title,
    @Default('') String userName,
    @Default('') String userPic,
    @Default('') String coverUrl,
    @Default('') String playUrl,
    @JsonAlwaysString() @Default('00:00') String duration,
  }) = _VideoListEntity;
  factory VideoListEntity.fromJson(Map<String, Object?> json) =>
      _$VideoListEntityFromJson(json);
}
