import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'podcast_provider.g.dart';

@riverpod
class Podcast extends _$Podcast {
  @override
  int build() => 0;

  void increment() {
    state += 1;
  }
}
