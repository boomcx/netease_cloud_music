import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'community_provider.g.dart';

@riverpod
class Community extends _$Community {
  @override
  int build() => 0;

  void increment() {
    state += 1;
  }
}
