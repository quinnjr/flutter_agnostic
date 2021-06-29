import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_agnostic/flutter_agnostic.dart'
    show FlutterAgnosticOptions;

/// Provides a wrapper around underlying [TabBar](https://api.flutter.dev/flutter/material/TabBar-class.html) and [CupertinoTabBar](https://api.flutter.dev/flutter/cupertino/CupertinoTabBar-class.html) widgets.
class AgnosticTabBar extends StatelessWidget {
  /// The [TabBar](https://api.flutter.dev/flutter/material/TabBar-class.html) or [CupertinoTabBar](https://api.flutter.dev/flutter/cupertino/CupertinoTabBar-class.html) returned by the build function.
  late final Widget _widget;

  AgnosticTabBar({
    Key? key,
  }) : super(key: key) {
    if (FlutterAgnosticOptions.isMaterial()) {
    } else if (FlutterAgnosticOptions.isCupertino()) {
    } else {
      throw Exception('Your platform is not supported');
    }
  }

  @override
  Widget build(BuildContext context) {
    return _widget;
  }
}
