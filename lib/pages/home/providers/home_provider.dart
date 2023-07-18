import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'home_provider.freezed.dart';
part 'home_provider.g.dart';

/// 两种数据管理方式各有优劣，只能是具体问题具体分析

/// 1、用于控制单页面多种数据类型的保存-这里属于集合模式
/// 使用[state.copyWith]方法进行数据的更新
/// 页面使用方式为`ref.watch(homeProvider.select((value) => value.count))`
/// 可以单独提文件出来写，比如`state/home_state.dart`
/// 集中化数据
@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default(0) num count,
  }) = _HomeState;
}

@riverpod
class Home extends _$Home {
  @override
  HomeState build() {
    return const HomeState();
  }

  void increment() {
    state = state.copyWith(count: state.count + 1);
  }
}

/// 2、拆分页面数据状态
/// 每一个数据体都是一个`provider`，依托于`provider generator`的便利可以避免集中数据的管理
/// 这里有个好处就是可以根据不同的数据类型进行拆分，每一个数据节点，自己控制操作，
/// 并且可以简化使用过程中单属性变量的变化监听，更容易实现低耦合高解耦
/// `ref.watch(homeProvider.select((value) => value.count))` 简化为 `ref.watch(counterProvider)`
@riverpod
class Counter extends _$Counter {
  @override
  int build() {
    return 0;
  }

  void increment() {
    state += 1;
  }
}
