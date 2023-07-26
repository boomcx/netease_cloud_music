// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$searchHash() => r'f7630cec6daf493fab5be0788e0737d3adef6676';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

typedef SearchRef = AutoDisposeFutureProviderRef<void>;

/// 将某个模块的请求独立出来，可以更便捷的使用
///
/// Copied from [search].
@ProviderFor(search)
const searchProvider = SearchFamily();

/// 将某个模块的请求独立出来，可以更便捷的使用
///
/// Copied from [search].
class SearchFamily extends Family<AsyncValue<void>> {
  /// 将某个模块的请求独立出来，可以更便捷的使用
  ///
  /// Copied from [search].
  const SearchFamily();

  /// 将某个模块的请求独立出来，可以更便捷的使用
  ///
  /// Copied from [search].
  SearchProvider call(
    String query, {
    int limit = 10,
    int type = 1,
  }) {
    return SearchProvider(
      query,
      limit: limit,
      type: type,
    );
  }

  @override
  SearchProvider getProviderOverride(
    covariant SearchProvider provider,
  ) {
    return call(
      provider.query,
      limit: provider.limit,
      type: provider.type,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'searchProvider';
}

/// 将某个模块的请求独立出来，可以更便捷的使用
///
/// Copied from [search].
class SearchProvider extends AutoDisposeFutureProvider<void> {
  /// 将某个模块的请求独立出来，可以更便捷的使用
  ///
  /// Copied from [search].
  SearchProvider(
    this.query, {
    this.limit = 10,
    this.type = 1,
  }) : super.internal(
          (ref) => search(
            ref,
            query,
            limit: limit,
            type: type,
          ),
          from: searchProvider,
          name: r'searchProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$searchHash,
          dependencies: SearchFamily._dependencies,
          allTransitiveDependencies: SearchFamily._allTransitiveDependencies,
        );

  final String query;
  final int limit;
  final int type;

  @override
  bool operator ==(Object other) {
    return other is SearchProvider &&
        other.query == query &&
        other.limit == limit &&
        other.type == type;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, query.hashCode);
    hash = _SystemHash.combine(hash, limit.hashCode);
    hash = _SystemHash.combine(hash, type.hashCode);

    return _SystemHash.finish(hash);
  }
}

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
