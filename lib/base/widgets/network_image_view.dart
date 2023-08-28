import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:netease_cloud_music/support_files/assets.gen.dart';

class NetworkAssets extends StatelessWidget {
  const NetworkAssets(
    this.url, {
    Key? key,
    this.fit = BoxFit.cover,
    this.width,
    this.height,
    this.radius,
    this.placeholder,
    this.error,
    this.alignment = Alignment.center,
  }) : super(key: key);

  final String url;
  final BoxFit? fit;
  final double? width;
  final double? height;
  final double? radius;
  final Widget? placeholder;
  final Widget? error;
  final Alignment alignment;

  @override
  Widget build(BuildContext context) {
    Widget placeholder = this.placeholder ??
        Container(
          color: const Color(0xFFEEEEEE),
        );

    Widget errorIcon = error ??
        Assets.images.imageHolder.image(
          width: width,
          height: height,
          fit: fit,
          alignment: alignment,
        );

    if (url.isEmpty || Uri.tryParse(url) == null) {
      return radius != null
          ? ClipRRect(
              borderRadius: BorderRadius.circular(radius!),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(radius!),
                child: errorIcon,
              ),
            )
          : errorIcon;
    }

    final image = CachedNetworkImage(
      imageUrl: url,
      fit: fit,
      width: width,
      height: height,
      alignment: alignment,
      placeholder: (context, url) => placeholder,
      errorWidget: (context, url, error) => errorIcon,
    );

    if (radius != null) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(radius!),
        child: image,
      );
    }

    return image;
  }
}
