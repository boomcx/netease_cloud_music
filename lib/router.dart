import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:netease_cloud_music/pages/home/views/home_view.dart';

import 'base.dart';

part 'router.g.dart';

final routeObserver = RouteObserver<PageRoute>();

@riverpod
GoRouter router(RouterRef ref) {
  return GoRouter(
    observers: [
      routeObserver,
      Toast.toastNavigatorObserver(),
    ],
    redirect: (context, state) {
      // state.fullPath;
      // 强制登录/在跳转之前需要额外判断跳转路径
      // 可以在这里重载路由配置
      return null;
    },
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const HomeView(),
      ),
    ],
  );
}
