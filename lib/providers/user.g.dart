// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$isLoginHash() => r'63d4e5b3213a7ed132a38981a7e2cc310817fe18';

/// 用户登录状态
///
/// Copied from [isLogin].
@ProviderFor(isLogin)
final isLoginProvider = Provider<bool>.internal(
  isLogin,
  name: r'isLoginProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$isLoginHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef IsLoginRef = ProviderRef<bool>;
String _$userHash() => r'7bcd60f4e8f5c593d348ccbc997b1a5e0e297bee';

/// See also [User].
@ProviderFor(User)
final userProvider = NotifierProvider<User, UserData>.internal(
  User.new,
  name: r'userProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$userHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$User = Notifier<UserData>;
String _$tokenHash() => r'f6d45e1dc3d892b76c68d23c49ba1abb5bb6653c';

/// See also [Token].
@ProviderFor(Token)
final tokenProvider = NotifierProvider<Token, AppToken?>.internal(
  Token.new,
  name: r'tokenProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$tokenHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$Token = Notifier<AppToken?>;
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
