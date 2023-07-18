// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$homeHash() => r'722cc440ef17dde9c4454574d3abd295f04f36db';

/// See also [Home].
@ProviderFor(Home)
final homeProvider = AutoDisposeNotifierProvider<Home, HomeState>.internal(
  Home.new,
  name: r'homeProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$homeHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$Home = AutoDisposeNotifier<HomeState>;
String _$counterHash() => r'f11709298649ac2e4c6c1ee379095d7ce00b695c';

/// 2、拆分页面数据状态
/// 每一个数据体都是一个`provider`，依托于`provider generator`的便利可以避免集中数据的管理
/// 这里有个好处就是可以根据不同的数据类型进行拆分，每一个数据节点，自己控制操作，
/// 并且可以简化使用过程中单属性变量的变化监听，更容易实现低耦合高解耦
/// `ref.watch(homeProvider.select((value) => value.count))` 简化为 `ref.watch(counterProvider)`
///
/// Copied from [Counter].
@ProviderFor(Counter)
final counterProvider = AutoDisposeNotifierProvider<Counter, int>.internal(
  Counter.new,
  name: r'counterProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$counterHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$Counter = AutoDisposeNotifier<int>;
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
