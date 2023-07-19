import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:netease_cloud_music/app.dart';
import 'package:netease_cloud_music/base.dart';
import '../providers/home_provider.dart';

class HomeView extends ConsumerWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final count1 = ref.watch(homeProvider.select((value) => value.count));
    final count2 = ref.watch(counterProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'HOMEVIEW - 123456789',
          style: TextStyle(
            fontFamily: FontFamily.musicStreet,
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () => ref.read(homeProvider.notifier).increment(),
              child: Text('use state: $count1'),
            ),
            ElevatedButton(
              onPressed: () => ref.read(counterProvider.notifier).increment(),
              child: Text(
                'single provider: $count2',
              ),
            ),
            SvgAssets(
              // Assets.svg.neOutlineFind,
              // Assets.svg.neOutlineMine,
              // Assets.svg.neOutlinePodcast,
              Assets.svg.neOutlineFind,

              width: 330,
              height: 330,
              color: Colors.redAccent,
            ),
          ],
        ),
      ),
    );
  }
}
