import 'dart:convert';

import 'package:hive_flutter/hive_flutter.dart';
import 'package:netease_cloud_music/app.dart';
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

  /// 登录流程
  login() async {
    final repository = ref.watch(apiClientProvider);
    try {
      var data = await repository.login();
      ref.read(tokenProvider.notifier).update(data);
    } catch (e) {
      logger.e(e);
    }
  }

  logout() async {
    try {
      await ref.read(apiClientProvider).logout();
      ref.read(tokenProvider.notifier).clean();
    } catch (e) {
      logger.e(e);
    }
  }
}

/// 用户登录状态
@riverpod
bool isLogin(IsLoginRef ref) {
  return ref.watch(tokenProvider) != null;
}

@Riverpod(keepAlive: true)
class Token extends _$Token {
  @override
  AppToken? build() {
    // 本地获取用户鉴权信息
    final box = Hive.box(kAppHiveBox);
    final tokenStr = box.get(kUserToken, defaultValue: '');
    if (tokenStr.isEmpty) return null;
    // 用于包含用户鉴权信息的map
    final tokenJson = json.decode(tokenStr);
    // json to model
    return AppToken.fromJson(tokenJson);
  }

  /// 更新鉴权信息
  update(AppToken data) {
    state = data;
    final box = Hive.box(kAppHiveBox);
    box.put(kUserToken, json.encode(data.toJson()));
  }

  /// 清空信息
  clean() {
    state = null;
    final box = Hive.box(kAppHiveBox);
    box.delete(kUserToken);
  }
}
