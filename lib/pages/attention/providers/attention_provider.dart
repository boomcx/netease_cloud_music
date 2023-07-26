import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'attention_provider.g.dart';

@riverpod
class Attention extends _$Attention {
  @override
  int build() => 0;

  void increment() {
    state += 1;
  }
}
