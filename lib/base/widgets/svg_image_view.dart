import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

class SvgAssets extends StatelessWidget {
  const SvgAssets(
    this.path, {
    super.key,
    this.fit = BoxFit.contain,
    this.width,
    this.height,
    this.placeholder,
    this.color,
  });

  final String path;
  final BoxFit fit;
  final double? width;
  final double? height;
  final Widget? placeholder;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    Widget placeholder = this.placeholder ??
        Container(
          color: const Color(0xFFEEEEEE),
        );

    if (Uri.tryParse(path) == null) {
      return SizedBox(
        width: width,
        height: height,
        child: placeholder,
      );
    }

    return SvgPicture.asset(
      path,
      fit: fit,
      width: width,
      height: height,
      // theme: SvgTheme(currentColor: color ?? Colors.red),
      colorFilter: ColorFilter.mode(color ?? Colors.black, BlendMode.srcIn),
      placeholderBuilder: (_) => placeholder,
      matchTextDirection: true,
    );
  }
}
