import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter/material.dart';
import '../providers/community_provider.dart';

class CommunityView extends ConsumerWidget {
  const CommunityView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text('Community View')),
      body: Center(
        child: Column(
          children: [
            Text(
              'Community Counter:${ref.watch(communityProvider)}',
            ),
            ElevatedButton(
              onPressed: ref.read(communityProvider.notifier).increment,
              child: const Text('increment'),
            ),
          ],
        ),
      ),
    );
  }
}
