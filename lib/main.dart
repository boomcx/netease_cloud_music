import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'app.dart';
import 'base.dart';
import 'router.dart';
import 'providers.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox(kAppHiveBox);

  runApp(ProviderScope(
    observers: [
      ProviderLogger(),
    ],
    overrides: [
      appDomainProvider.overrideWithValue(testConfig),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ScreenUtil.init(context, designSize: const Size(375, 734));
    final router = ref.watch(routerProvider);

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: kAppThemeData,
      routerConfig: router,
      // routerDelegate: router.routerDelegate,
      // routeInformationParser: router.routeInformationParser,
      // routeInformationProvider: router.routeInformationProvider,
      builder: (context, child) {
        var rChild = child!;
        rChild = Toast.init(context, child);
        return rChild;
      },
    );
  }
}
