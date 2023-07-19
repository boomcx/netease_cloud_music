// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$isLoginHash() => r'5d88bf2626c4aaeecc258362003c645b941df0ff';

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
String _$userHash() => r'9200423bba073df8a420794c6fa576ace10191ee';

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
