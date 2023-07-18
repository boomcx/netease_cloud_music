import 'package:freezed_annotation/freezed_annotation.dart';
part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class UserData with _$UserData {
  const factory UserData({
    @Default('') String uid,
    @Default('') String name,
    @Default('') String image,
  }) = _UserData;
  factory UserData.fromJson(Map<String, Object?> json) =>
      _$UserDataFromJson(json);
}
