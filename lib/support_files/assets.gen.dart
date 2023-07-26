/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/ic_launcher.png
  AssetGenImage get icLauncher =>
      const AssetGenImage('assets/icons/ic_launcher.png');

  /// File path: assets/icons/icon100.png
  AssetGenImage get icon100 => const AssetGenImage('assets/icons/icon100.png');

  /// File path: assets/icons/icon101.png
  AssetGenImage get icon101 => const AssetGenImage('assets/icons/icon101.png');

  /// File path: assets/icons/icon102.png
  AssetGenImage get icon102 => const AssetGenImage('assets/icons/icon102.png');

  /// File path: assets/icons/icon107.png
  AssetGenImage get icon107 => const AssetGenImage('assets/icons/icon107.png');

  /// File path: assets/icons/icon108.png
  AssetGenImage get icon108 => const AssetGenImage('assets/icons/icon108.png');

  /// File path: assets/icons/icon109.png
  AssetGenImage get icon109 => const AssetGenImage('assets/icons/icon109.png');

  /// File path: assets/icons/icon110.png
  AssetGenImage get icon110 => const AssetGenImage('assets/icons/icon110.png');

  /// File path: assets/icons/logo.png
  AssetGenImage get logo => const AssetGenImage('assets/icons/logo.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        icLauncher,
        icon100,
        icon101,
        icon102,
        icon107,
        icon108,
        icon109,
        icon110,
        logo
      ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/cm2_vehicle_default_bg-ip6.jpg
  AssetGenImage get cm2VehicleDefaultBgIp6 =>
      const AssetGenImage('assets/images/cm2_vehicle_default_bg-ip6.jpg');

  /// File path: assets/images/cm4_play_disc.png
  AssetGenImage get cm4PlayDisc =>
      const AssetGenImage('assets/images/cm4_play_disc.png');

  /// File path: assets/images/cm4_play_disc_cover.png
  AssetGenImage get cm4PlayDiscCover =>
      const AssetGenImage('assets/images/cm4_play_disc_cover.png');

  /// File path: assets/images/cm4_play_disc_mask.png
  AssetGenImage get cm4PlayDiscMask =>
      const AssetGenImage('assets/images/cm4_play_disc_mask.png');

  /// File path: assets/images/cm4_playing_mask.png
  AssetGenImage get cm4PlayingMask =>
      const AssetGenImage('assets/images/cm4_playing_mask.png');

  /// File path: assets/images/ic_nav_back.png
  AssetGenImage get icNavBack =>
      const AssetGenImage('assets/images/ic_nav_back.png');

  $AssetsImagesTabbarGen get tabbar => const $AssetsImagesTabbarGen();

  /// List of all assets
  List<AssetGenImage> get values => [
        cm2VehicleDefaultBgIp6,
        cm4PlayDisc,
        cm4PlayDiscCover,
        cm4PlayDiscMask,
        cm4PlayingMask,
        icNavBack
      ];
}

class $AssetsImagesTabbarGen {
  const $AssetsImagesTabbarGen();

  /// File path: assets/images/tabbar/find.png
  AssetGenImage get find =>
      const AssetGenImage('assets/images/tabbar/find.png');

  /// File path: assets/images/tabbar/focus.png
  AssetGenImage get focus =>
      const AssetGenImage('assets/images/tabbar/focus.png');

  /// File path: assets/images/tabbar/mine.png
  AssetGenImage get mine =>
      const AssetGenImage('assets/images/tabbar/mine.png');

  /// File path: assets/images/tabbar/podcast.png
  AssetGenImage get podcast =>
      const AssetGenImage('assets/images/tabbar/podcast.png');

  /// List of all assets
  List<AssetGenImage> get values => [find, focus, mine, podcast];
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
