import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../providers/home_provider.dart';

class HomeView extends ConsumerWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final count1 = ref.watch(homeProvider.select((value) => value.count));
    final count2 = ref.watch(counterProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
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
                style: TextStyle(
                  fontFamily: 'Dolpgin',
                  // fontWeight: FontWeight.w500,
                  fontSize: 30,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
