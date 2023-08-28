import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:netease_cloud_music/router.dart';

import 'app.dart';

enum TabbarType { find, podcast, mine, attention, community }

class TabbarScaffold extends StatefulWidget {
  const TabbarScaffold({
    super.key,
    required this.body,
    this.type = TabbarType.find,
  });

  final Widget body;
  final TabbarType type;

  @override
  State<TabbarScaffold> createState() => _TabbarScaffoldState();
}

class _TabbarScaffoldState extends State<TabbarScaffold> {
  int _index = -1;
  List<Widget> _children = [];

  final _tabList = [
    {
      'title': '发现',
      'icon': Assets.images.tabbar.find,
      'onTap': (BuildContext context) {
        context.go(Routes.find);
      },
    },
    {
      'title': '播客',
      'icon': Assets.images.tabbar.podcast,
      'onTap': (BuildContext context) {
        // if (!ref.read(isLoggedProvider)) {
        //   context.push('/login');
        // } else {
        context.go(Routes.podcast);
        // }
      },
    },
    {
      'title': '我的',
      'icon': Assets.images.tabbar.mine,
      'onTap': (BuildContext context) {
        // if (!ref.read(isLoggedProvider)) {
        //   context.push('/login');
        // } else {
        context.go(Routes.mine);
        // }
      },
    },
    {
      'title': '关注',
      'icon': Assets.images.tabbar.focus,
      'onTap': (BuildContext context) {
        // if (!ref.read(isLoggedProvider)) {
        //   context.push('/login');
        // } else {
        context.go(Routes.attention);
        // }
      },
    },
    {
      'title': '社区',
      'icon': Assets.images.tabbar.podcast,
      'onTap': (BuildContext context) {
        // if (!ref.read(isLoggedProvider)) {
        //   context.push('/login');
        // } else {
        context.go(Routes.community);
        // }
      },
    },
  ];

  @override
  void initState() {
    super.initState();
    _children = List.generate(_tabList.length, (index) => const SizedBox());
    _updateChildren();
  }

  void _updateChildren() {
    if (widget.type.index != _index) {
      _index = widget.type.index;
      _children[_index] = widget.body;
    }
    setState(() {});
  }

  @override
  void didUpdateWidget(covariant TabbarScaffold oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.type != widget.type) {
      _updateChildren();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: IndexedStack(
              index: _index,
              children: _children,
            ),
          ),
          _TabBar(
            index: _index,
            tabList: _tabList,
          ),
        ],
      ),
    );
  }
}

class _TabBar extends StatelessWidget {
  const _TabBar({
    Key? key,
    required this.index,
    required this.tabList,
  }) : super(key: key);

  final int index;
  final List tabList;

  @override
  Widget build(BuildContext context) {
    List<Widget> children = [];

    for (int i = 0; i < tabList.length; i++) {
      children.add(
        Expanded(
          child: _Item(tabList[i], index == i),
        ),
      );
    }

    return _AppEventlistener(
      child: MediaQuery(
        data: MediaQuery.of(context).copyWith(textScaleFactor: 1),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.05),
                blurRadius: 1,
              )
            ],
          ),
          child: SafeArea(
            top: false,
            child: Column(
              children: [
                // const ExtensivePlayer(),
                SizedBox(
                  height: 50,
                  child: Row(
                    children: children,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _Item extends StatelessWidget {
  const _Item(
    this.item,
    this.isSelected, {
    super.key,
  });

  final Map item;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    final colors = context.appColors;
    return GestureDetector(
      onTap: () => (item['onTap'] as Function).call(context),
      behavior: HitTestBehavior.translucent,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _ItemImage(isSelected: isSelected, image: item['icon']),
          // Image.asset(
          //   'assets/images/ic_${tabList[i]['icon']}_${i == index ? 'slt' : 'nor'}.png',
          //   width: 26,
          //   height: 26,
          // ),
          const SizedBox(height: 2),
          Text(
            item['title'] as String,
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w500,
              color: isSelected ? colors.primary : colors.gray,
            ),
          ),
        ],
      ),
    );
  }
}

class _ItemImage extends StatelessWidget {
  const _ItemImage({
    super.key,
    required this.isSelected,
    required this.image,
  });

  final bool isSelected;
  final AssetGenImage image;

  @override
  Widget build(BuildContext context) {
    final colors = context.appColors;
    final child = Container(
      width: 24,
      height: 24,
      padding: EdgeInsets.all(isSelected ? 3 : 0),
      decoration: BoxDecoration(
        color: isSelected ? colors.primary : colors.white,
        borderRadius: BorderRadius.circular(50),
      ),
      child: image.image(
        color: isSelected ? colors.white : colors.gray,
      ),
    );
    if (isSelected) {
      return ZoomIn(
        duration: const Duration(milliseconds: 150),
        child: child,
      );
    }
    return child;
  }
}

class _AppEventlistener extends HookWidget {
  const _AppEventlistener({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    // useEffect(() {
    // final needLoginSub = AppService.bus.on<AppNeedToLogin>().listen((event) {
    // if (GoRouter.of(context).location != '/login') {
    //   ref.read(authNotifierProvider.notifier).logout();
    //   context
    //     ..go('/')
    //     ..push('/login');
    // }
    // });
    // return () {
    //   needLoginSub.cancel();
    // };
    // });
    return child;
  }
}
