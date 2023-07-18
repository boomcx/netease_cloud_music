// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'token_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LoginByPasswordParams _$LoginByPasswordParamsFromJson(
    Map<String, dynamic> json) {
  return _LoginByPasswordParams.fromJson(json);
}

/// @nodoc
mixin _$LoginByPasswordParams {
  String? get phone => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginByPasswordParamsCopyWith<LoginByPasswordParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginByPasswordParamsCopyWith<$Res> {
  factory $LoginByPasswordParamsCopyWith(LoginByPasswordParams value,
          $Res Function(LoginByPasswordParams) then) =
      _$LoginByPasswordParamsCopyWithImpl<$Res, LoginByPasswordParams>;
  @useResult
  $Res call({String? phone, String? password});
}

/// @nodoc
class _$LoginByPasswordParamsCopyWithImpl<$Res,
        $Val extends LoginByPasswordParams>
    implements $LoginByPasswordParamsCopyWith<$Res> {
  _$LoginByPasswordParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LoginByPasswordParamsCopyWith<$Res>
    implements $LoginByPasswordParamsCopyWith<$Res> {
  factory _$$_LoginByPasswordParamsCopyWith(_$_LoginByPasswordParams value,
          $Res Function(_$_LoginByPasswordParams) then) =
      __$$_LoginByPasswordParamsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? phone, String? password});
}

/// @nodoc
class __$$_LoginByPasswordParamsCopyWithImpl<$Res>
    extends _$LoginByPasswordParamsCopyWithImpl<$Res, _$_LoginByPasswordParams>
    implements _$$_LoginByPasswordParamsCopyWith<$Res> {
  __$$_LoginByPasswordParamsCopyWithImpl(_$_LoginByPasswordParams _value,
      $Res Function(_$_LoginByPasswordParams) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = freezed,
    Object? password = freezed,
  }) {
    return _then(_$_LoginByPasswordParams(
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LoginByPasswordParams implements _LoginByPasswordParams {
  const _$_LoginByPasswordParams({this.phone, this.password});

  factory _$_LoginByPasswordParams.fromJson(Map<String, dynamic> json) =>
      _$$_LoginByPasswordParamsFromJson(json);

  @override
  final String? phone;
  @override
  final String? password;

  @override
  String toString() {
    return 'LoginByPasswordParams(phone: $phone, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginByPasswordParams &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, phone, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoginByPasswordParamsCopyWith<_$_LoginByPasswordParams> get copyWith =>
      __$$_LoginByPasswordParamsCopyWithImpl<_$_LoginByPasswordParams>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LoginByPasswordParamsToJson(
      this,
    );
  }
}

abstract class _LoginByPasswordParams implements LoginByPasswordParams {
  const factory _LoginByPasswordParams(
      {final String? phone, final String? password}) = _$_LoginByPasswordParams;

  factory _LoginByPasswordParams.fromJson(Map<String, dynamic> json) =
      _$_LoginByPasswordParams.fromJson;

  @override
  String? get phone;
  @override
  String? get password;
  @override
  @JsonKey(ignore: true)
  _$$_LoginByPasswordParamsCopyWith<_$_LoginByPasswordParams> get copyWith =>
      throw _privateConstructorUsedError;
}
