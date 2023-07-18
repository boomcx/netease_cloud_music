// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_auth.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$isLoginHash() => r'8823d6a105ad2aa77023c40c1b32a42ec85719ce';

/// 用户登录状态
///
/// Copied from [isLogin].
@ProviderFor(isLogin)
final isLoginProvider = AutoDisposeProvider<bool>.internal(
  isLogin,
  name: r'isLoginProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$isLoginHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef IsLoginRef = AutoDisposeProviderRef<bool>;
String _$userAuthHash() => r'91af9f6095138001377ae0faacb1d79aeffbf95a';

/// 这里非必须字符串类型，可以是服务器返回的整个登录信息
///
/// Copied from [UserAuth].
@ProviderFor(UserAuth)
final userAuthProvider =
    AutoDisposeAsyncNotifierProvider<UserAuth, AppToken?>.internal(
  UserAuth.new,
  name: r'userAuthProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$userAuthHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$UserAuth = AutoDisposeAsyncNotifier<AppToken?>;
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
