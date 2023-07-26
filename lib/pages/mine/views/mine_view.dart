import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../providers/mine_provider.dart';

class MineView extends ConsumerWidget {
  const MineView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text("Mine")),
      body: Center(
        child: Column(
          children: [
            Text(
              'Mine Counter:${ref.watch(mineProvider)}',
            ),
            ElevatedButton(
              onPressed: ref.read(mineProvider.notifier).increment,
              child: const Text('increment'),
            ),
          ],
        ),
      ),
    );
  }
}
