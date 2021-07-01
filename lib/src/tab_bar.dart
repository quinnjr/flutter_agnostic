import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_agnostic/flutter_agnostic.dart'
    show FlutterAgnosticOptions;

/// Provides a wrapper around underlying [TabBar](https://api.flutter.dev/flutter/material/TabBar-class.html) and [CupertinoTabBar](https://api.flutter.dev/flutter/cupertino/CupertinoTabBar-class.html) widgets.
class AgnosticTabBar extends StatelessWidget {
  /// The [TabBar](https://api.flutter.dev/flutter/material/TabBar-class.html) or [CupertinoTabBar](https://api.flutter.dev/flutter/cupertino/CupertinoTabBar-class.html) returned by the build function.
  late final Widget _widget;

  AgnosticTabBar({
    Key? key,
    required List<Widget> tabs,
    required List<BottomNavigationBarItem> items,
    TabController? controller,
    bool isScrollable = false,
    Color? indicatorColor,
    bool automaticIndicatorColorAdjustment = true,
    double indicatorWeight = 2.0,
    EdgeInsetsGeometry inidcatorPadding = EdgeInsets.zero,
    Decoration? indicator,
    TabBarIndicatorSize? indicatorSize,
    Color? labelColor,
    TextStyle? labelStyle,
    EdgeInsetsGeometry? labelPadding,
    Color? unselectedLabelColor,
    TextStyle? unselectedLabelStyle,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
    MaterialStateProperty<Color?>? overlayColor,
    MouseCursor? mouseCursor,
    bool? enableFeedback,
    ValueChanged<int>? onTap,
    ScrollPhysics? physics,
    int currentIndex = 0,
    Color? backgroundColor,
    Color? activeColor,
    Color inactiveColor = CupertinoColors.inactiveGray,
    double iconSize = 30.0,
    Border border = const Border(
        top: BorderSide(
            color: CupertinoDynamicColor.withBrightness(
                color: Color(0x4C000000), darkColor: Color(0x29000000)),
            width: 0.0,
            style: BorderStyle.solid)),
  }) : super(key: key) {
    if (FlutterAgnosticOptions.isMaterial()) {
      _widget = TabBar(
          key: key,
          tabs: tabs,
          controller: controller,
          isScrollable: isScrollable,
          indicatorColor: indicatorColor,
          automaticIndicatorColorAdjustment: automaticIndicatorColorAdjustment,
          indicatorWeight: indicatorWeight,
          indicatorPadding: inidcatorPadding,
          indicator: indicator,
          indicatorSize: indicatorSize,
          labelColor: labelColor,
          labelStyle: labelStyle,
          labelPadding: labelPadding,
          unselectedLabelColor: unselectedLabelColor,
          unselectedLabelStyle: unselectedLabelStyle,
          dragStartBehavior: dragStartBehavior,
          overlayColor: overlayColor,
          mouseCursor: mouseCursor,
          enableFeedback: enableFeedback,
          onTap: onTap,
          physics: physics);
    } else if (FlutterAgnosticOptions.isCupertino()) {
      _widget = CupertinoTabBar(
          key: key,
          items: items,
          onTap: onTap,
          currentIndex: currentIndex,
          backgroundColor: backgroundColor,
          activeColor: activeColor,
          inactiveColor: inactiveColor,
          iconSize: iconSize,
          border: border);
    } else {
      throw Exception('Your platform is not supported');
    }
  }

  @override
  Widget build(BuildContext context) {
    return _widget;
  }
}
