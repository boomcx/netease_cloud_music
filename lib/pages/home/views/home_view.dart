import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:netease_cloud_music/app.dart';
import 'package:netease_cloud_music/base.dart';
import 'package:netease_cloud_music/providers.dart';
import '../providers/home_provider.dart';

class HomeView extends ConsumerWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final count1 = ref.watch(homeProvider.select((value) => value.count));
    // final count2 = ref.watch(counterProvider);
    // final data = ref.watch(searchProvider('海阔天空', type: 100));

    final appColors = context.appColors;

    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 150 + context.padding.top,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [appColors.hexE8E5FA, appColors.white],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
        ),
        Scaffold(
            // extendBodyBehindAppBar: true,
            backgroundColor: Colors.transparent,
            appBar: AAppBar(
              backgroundColor: Colors.transparent,
              padding: const EdgeInsets.symmetric(horizontal: 13),
              titleWidget: Container(
                height: 30,
                margin: const EdgeInsets.symmetric(horizontal: 12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  gradient: LinearGradient(
                    colors: [appColors.hexD6D5F5, appColors.hexE9D6EA],
                  ),
                ),
              ),
              leading: Assets.images.icNavMenu.image(width: 18),
              leadingWidth: 18,
              actions: [
                Assets.images.icNavVoice.image(width: 18),
              ],
            ),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Gaps.h10,
                  _Banner(),
                  ElevatedButton(
                      onPressed: () {
                        ref.read(userProvider.notifier).updateUser();
                      },
                      child: Text('login')),
                ],
              ),
            )),
      ],
    );
  }
}

class _Banner extends ConsumerWidget {
  const _Banner({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appColors = context.appColors;
    final banner = ref.watch(bannerProvider(type: 1)).valueOrNull ?? [];
    if (banner.isEmpty) {
      return Gaps.blank;
    }

    return SizedBox(
      height: 135.w,
      child: Swiper(
        autoplay: true,
        duration: 300,
        curve: Curves.easeInOut,
        itemCount: banner.length,
        itemBuilder: (context, index) {
          return Stack(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: NetworkAssets(
                  banner[index].pic,
                  radius: 8,
                  width: double.infinity,
                ),
              ),
              // title
              Positioned(
                bottom: 5,
                right: 20,
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 4, vertical: 1),
                  decoration: BoxDecoration(
                      color: appColors.white,
                      borderRadius: BorderRadius.circular(3)),
                  child: Text(
                    banner[index].typeTitle,
                    style: TextStyle(
                      color: banner[index].titleColor,
                      fontSize: 10.sp,
                    ),
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
