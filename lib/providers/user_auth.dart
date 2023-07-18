import 'dart:convert';

import 'package:hive_flutter/hive_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '/app.dart';
import '/base.dart';
import '/models.dart';
import '/network/api_client.dart';

part 'user_auth.g.dart';

/// 用户登录状态
@riverpod
bool isLogin(IsLoginRef ref) {
  return ref.watch(userAuthProvider).valueOrNull != null;
}

/// 这里非必须字符串类型，可以是服务器返回的整个登录信息
@riverpod
class UserAuth extends _$UserAuth {
  @override
  FutureOr<AppToken?> build() {
    // 本地获取用户鉴权信息
    final box = Hive.box(kAppHiveBox);
    final tokenStr = box.get(kUserToken, defaultValue: '');
    if (tokenStr.isEmpty) return null;
    // 用于包含用户鉴权信息的map
    final tokenJson = json.decode(tokenStr);
    // json to model
    return AppToken.fromJson(tokenJson);
  }

  /// 登录流程
  login() async {
    final repository = ref.watch(apiClientProvider);
    state = const AsyncLoading();
    state = await AsyncValue.guard(
      () => repository.login(
        const LoginByPasswordParams(phone: '', password: ''),
      ),
    );
    state.whenData((value) {
      if (value != null) {
        _save(value);
      }
    });
  }

  logout() async {
    try {
      await ref.read(apiClientProvider).logout();
    } catch (e) {
      logger.e(e);
    }
    final box = Hive.box(kAppHiveBox);
    box.delete(kUserToken);
    state = const AsyncValue.data(null);
  }

  /// 保存本地用户鉴权信息
  _save(AppToken value) {
    final box = Hive.box(kAppHiveBox);
    box.put(kUserToken, json.encode(value.toJson()));
  }
}
