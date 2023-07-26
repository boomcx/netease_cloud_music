import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter/material.dart';
import '../providers/attention_provider.dart';

class AttentionView extends ConsumerWidget {
  const AttentionView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text('Attention View')),
      body: Center(
        child: Column(
          children: [
            Text(
              'Attention Counter:${ref.watch(attentionProvider)}',
            ),
            ElevatedButton(
              onPressed: ref.read(attentionProvider.notifier).increment,
              child: const Text('increment'),
            ),
          ],
        ),
      ),
    );
  }
}
