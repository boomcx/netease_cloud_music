import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:netease_cloud_music/pages/attention/attention.dart';
import 'package:netease_cloud_music/pages/community/community.dart';
import 'package:netease_cloud_music/pages/mine/views/mine_view.dart';
import 'package:netease_cloud_music/pages/podcast/podcast.dart';
import 'package:netease_cloud_music/tabbar.dart';
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
      // if (state.location == '/') {
      //   return PageNames.find;
      // }
      // state.fullPath;
      // 强制登录/在跳转之前需要额外判断跳转路径
      // 可以在这里重载路由配置
      return null;
    },
    routes: [
      GoRoute(path: '/', redirect: (context, state) => PageNames.find),
      GoRoute(
        path: PageNames.find,
        pageBuilder: (context, state) => const CupertinoPage(
          child: TabbarScaffold(
            body: HomeView(),
          ),
        ),
      ),
      GoRoute(
        path: PageNames.podcast,
        pageBuilder: (context, state) => const CupertinoPage(
          child: TabbarScaffold(
            type: TabbarType.podcast,
            body: PodcastView(),
          ),
        ),
      ),
      GoRoute(
        path: PageNames.mine,
        pageBuilder: (context, state) => const CupertinoPage(
          child: TabbarScaffold(
            type: TabbarType.mine,
            body: MineView(),
          ),
        ),
      ),
      GoRoute(
        path: PageNames.attention,
        pageBuilder: (context, state) => const CupertinoPage(
          child: TabbarScaffold(
            type: TabbarType.attention,
            body: AttentionView(),
          ),
        ),
      ),
      GoRoute(
        path: PageNames.community,
        pageBuilder: (context, state) => const CupertinoPage(
          child: TabbarScaffold(
            type: TabbarType.community,
            body: CommunityView(),
          ),
        ),
      ),
    ],
  );
}

class PageNames {
  /// 发现
  static const String find = '/tabbar/find';

  /// 播客
  static const String podcast = '/tabbar/podcast';

  /// 我的
  static const String mine = '/tabbar/mine';

  /// 关注
  static const String attention = '/tabbar/attention';

  /// 社区
  static const String community = '/tabbar/community';
}
