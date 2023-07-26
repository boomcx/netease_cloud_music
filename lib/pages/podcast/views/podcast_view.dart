import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter/material.dart';
import '../providers/podcast_provider.dart';

class PodcastView extends ConsumerWidget {
  const PodcastView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text('Podcast View')),
      body: Center(
        child: Column(
          children: [
            Text(
              'Podcast Counter:${ref.watch(podcastProvider)}',
            ),
            ElevatedButton(
              onPressed: ref.read(podcastProvider.notifier).increment,
              child: const Text('increment'),
            ),
          ],
        ),
      ),
    );
  }
}
