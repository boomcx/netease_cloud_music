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
    final isLogin = ref.watch(isLoginProvider);
    if (isLogin) {
      updateUser();
    }
    return const UserData();
  }

  /// 更新用户数据
  updateUser() async {
    final isLogin = ref.watch(isLoginProvider);

    if (!isLogin) {
      return;
    }

    final repository = ref.watch(apiClientProvider);
    final token = ref.watch(tokenProvider);
    try {
      var data = await repository.user(token!.userId);
    } catch (e) {
      logger.e(e);
    }
  }

  /// 清空用户数据
  clean() {
    state = const UserData();
  }

  /// 登录流程
  login() async {
    Toast.showLoading();
    final repository = ref.watch(apiClientProvider);
    try {
      var data = await repository.login();
      ref.read(tokenProvider.notifier).update(data);
      updateUser();
    } catch (e) {
      logger.e(e);
    }
    Toast.dismiss();
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
@Riverpod(keepAlive: true)
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

const _userCookie = {
  "code": 200,
  "userId": 8731354683,
  "createTime": 1690531012954,
  "cookie":
      "MUSIC_A_T=1690531012954; Max-Age=2147483647; Expires=Sat, 18 Aug 2091 12:27:07 GMT; Path=/weapi/feedback;;MUSIC_R_T=0; Max-Age=2147483647; Expires=Sat, 18 Aug 2091 12:27:07 GMT; Path=/weapi/feedback;;MUSIC_R_T=0; Max-Age=2147483647; Expires=Sat, 18 Aug 2091 12:27:07 GMT; Path=/eapi/clientlog;;MUSIC_R_T=0; Max-Age=2147483647; Expires=Sat, 18 Aug 2091 12:27:07 GMT; Path=/openapi/clientlog;;MUSIC_A_T=1690531012954; Max-Age=2147483647; Expires=Sat, 18 Aug 2091 12:27:07 GMT; Path=/neapi/feedback;;MUSIC_R_T=0; Max-Age=2147483647; Expires=Sat, 18 Aug 2091 12:27:07 GMT; Path=/api/clientlog;;MUSIC_A_T=1690531012954; Max-Age=2147483647; Expires=Sat, 18 Aug 2091 12:27:07 GMT; Path=/weapi/clientlog;;MUSIC_R_T=0; Max-Age=2147483647; Expires=Sat, 18 Aug 2091 12:27:07 GMT; Path=/neapi/feedback;;MUSIC_SNS=; Max-Age=0; Expires=Mon, 31 Jul 2023 09:13:00 GMT; Path=/;MUSIC_A_T=1690531012954; Max-Age=2147483647; Expires=Sat, 18 Aug 2091 12:27:07 GMT; Path=/eapi/feedback;;MUSIC_R_T=0; Max-Age=2147483647; Expires=Sat, 18 Aug 2091 12:27:07 GMT; Path=/api/feedback;;MUSIC_R_T=0; Max-Age=2147483647; Expires=Sat, 18 Aug 2091 12:27:07 GMT; Path=/wapi/feedback;;MUSIC_R_T=0; Max-Age=2147483647; Expires=Sat, 18 Aug 2091 12:27:07 GMT; Path=/neapi/clientlog;;MUSIC_R_T=0; Max-Age=2147483647; Expires=Sat, 18 Aug 2091 12:27:07 GMT; Path=/eapi/feedback;;MUSIC_A_T=1690531012954; Max-Age=2147483647; Expires=Sat, 18 Aug 2091 12:27:07 GMT; Path=/eapi/clientlog;;MUSIC_R_T=0; Max-Age=2147483647; Expires=Sat, 18 Aug 2091 12:27:07 GMT; Path=/wapi/clientlog;;MUSIC_A_T=1690531012954; Max-Age=2147483647; Expires=Sat, 18 Aug 2091 12:27:07 GMT; Path=/api/feedback;;MUSIC_A_T=1690531012954; Max-Age=2147483647; Expires=Sat, 18 Aug 2091 12:27:07 GMT; Path=/api/clientlog;;MUSIC_A_T=1690531012954; Max-Age=2147483647; Expires=Sat, 18 Aug 2091 12:27:07 GMT; Path=/wapi/clientlog;;MUSIC_A=bf8bfeabb1aa84f9c8c3906c04a04fb864322804c83f5d607e91a04eae463c9436bd1a17ec353cf76a11a56e1d48989df7a6720df46a116f993166e004087dd322f3e38b45fd229792beede4eaef45bf8dfbdee348b7fe8e9273603b22c17452807e650dd04abd3fb8130b7ae43fcc5b; Max-Age=1296000; Expires=Tue, 15 Aug 2023 09:13:00 GMT; Path=/;;__csrf=cc493a74f95303563062e384719850c6; Max-Age=1296010; Expires=Tue, 15 Aug 2023 09:13:10 GMT; Path=/;;MUSIC_A_T=1690531012954; Max-Age=2147483647; Expires=Sat, 18 Aug 2091 12:27:07 GMT; Path=/wapi/feedback;;MUSIC_R_T=0; Max-Age=2147483647; Expires=Sat, 18 Aug 2091 12:27:07 GMT; Path=/weapi/clientlog;;MUSIC_A_T=1690531012954; Max-Age=2147483647; Expires=Sat, 18 Aug 2091 12:27:07 GMT; Path=/openapi/clientlog;;MUSIC_A_T=1690531012954; Max-Age=2147483647; Expires=Sat, 18 Aug 2091 12:27:07 GMT; Path=/neapi/clientlog;"
};
