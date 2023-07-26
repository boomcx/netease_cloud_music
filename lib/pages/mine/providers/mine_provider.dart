import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'mine_provider.g.dart';

@riverpod
class Mine extends _$Mine {
  @override
  int build() => 0;

  void increment() {
    state += 1;
  }
}
