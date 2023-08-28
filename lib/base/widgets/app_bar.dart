import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'app_bar_back_button.dart';

class AAppBar extends StatelessWidget implements PreferredSizeWidget {
  const AAppBar({
    Key? key,
    this.leading,
    this.leadingWidth,
    this.title,
    this.titleWidget,
    this.backgroundColor,
    this.shadow = false,
    this.systemOverlayStyle,
    this.backIconColor,
    this.actions,
    this.isRootNavigator = false,
    this.padding,
  }) : super(key: key);

  final Widget? leading;
  final double? leadingWidth;
  final String? title;
  final Widget? titleWidget;
  final List<Widget>? actions;
  final EdgeInsets? padding;
  final Color? backgroundColor;
  final bool shadow;
  final SystemUiOverlayStyle? systemOverlayStyle;
  final Color? backIconColor;
  final bool isRootNavigator;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      decoration: BoxDecoration(
        color: backgroundColor,
        boxShadow: shadow
            ? [
                BoxShadow(
                  color: const Color(0xFFB3B8CB).withOpacity(0.16),
                  blurRadius: 2,
                  offset: const Offset(0, 1),
                ),
              ]
            : null,
      ),
      child: AppBar(
        backgroundColor: Colors.transparent,
        titleSpacing: 0,
        leadingWidth: leadingWidth ?? kMinInteractiveDimensionCupertino,
        leading: _buildLeading(context),
        automaticallyImplyLeading: !isRootNavigator,
        title: titleWidget ?? (title != null ? Text(title!) : null),
        systemOverlayStyle: systemOverlayStyle,
        actions: actions,
      ),
    );
  }

  Widget? _buildLeading(BuildContext context) {
    if (isRootNavigator && leading == null) return null;
    if (leading != null) return leading;
    final route = ModalRoute.of(context);
    if (route is PageRoute && (route.canPop || route.fullscreenDialog)) {
      return AppBarBackButton(color: backIconColor);
    }
    return null;
  }

  @override
  Size get preferredSize =>
      const Size.fromHeight(kMinInteractiveDimensionCupertino);
}
