import 'package:riverpod_annotation/riverpod_annotation.dart';
import '/models.dart';

import '../base.dart';

part 'user.g.dart';

@Riverpod(keepAlive: true)
class User extends _$User {
  @override
  UserData build() {
    return const UserData();
  }

  /// 更新用户数据
  updateUser() {
    Toast.showLoading();
    Future.delayed(const Duration(seconds: 2), () {
      Toast.hideLoading();
      state = const UserData(
        name: 'zhangsan',
        uid: '123',
        image: 'https://picsum.photos/200/300',
      );
    });
  }

  /// 清空用户数据
  clean() {
    state = const UserData();
  }
}
