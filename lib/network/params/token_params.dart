import 'package:freezed_annotation/freezed_annotation.dart';
part 'token_params.freezed.dart';
part 'token_params.g.dart';

@freezed
class LoginByPasswordParams with _$LoginByPasswordParams {
  const factory LoginByPasswordParams({
    String? phone,
    String? password,
  }) = _LoginByPasswordParams;
  factory LoginByPasswordParams.fromJson(Map<String, Object?> json) =>
      _$LoginByPasswordParamsFromJson(json);
}
