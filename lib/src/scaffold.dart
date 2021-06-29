import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_agnostic/flutter_agnostic.dart'
    show FlutterAgnosticOptions;

/// Provides a wrapper around underlying [Scaffold] and [CuptertinoPageScaffold] widgets.
class AgnosticScaffold extends StatelessWidget {
  /// The [Scaffold] or [CupertinoPageScaffold] returned by the build function.
  late final Widget _widget;

  AgnosticScaffold(
      {Key? key,
      PreferredSizeWidget? appBar,
      Widget? floatingActionButton,
      FloatingActionButtonLocation? floatingActionButtonLocation,
      FloatingActionButtonAnimator? floatingActionButtonAnimator,
      List<Widget>? persistentFooterButtons,
      Widget? drawer,
      DrawerCallback? onDrawerChange,
      Widget? endDrawer,
      DrawerCallback? onEndDrawerChanged,
      Color? drawerScrimColor,
      Color? materialBackgroundColor,
      Color? cupertinoBackgroundColor,
      Widget? bottomNavigationBar,
      Widget? bottomSheet,
      bool primary = true,
      DragStartBehavior drawerDragStartBehavior = DragStartBehavior.start,
      bool? resizeToAvoidBottomInset,
      bool extendBody = false,
      bool extendBodyBehindAppBar = false,
      bool drawerEnableOpenDragGesture = true,
      bool endDrawerEnableOpenDragGesture = true,
      ObstructingPreferredSizeWidget? navigationBar,
      required Widget child})
      : super(key: key) {
    if (FlutterAgnosticOptions.isMaterial()) {
      _widget = Scaffold(
          key: key,
          appBar: appBar,
          floatingActionButton: floatingActionButton,
          floatingActionButtonAnimator: floatingActionButtonAnimator,
          floatingActionButtonLocation: floatingActionButtonLocation,
          persistentFooterButtons: persistentFooterButtons,
          drawer: drawer,
          onDrawerChanged: onDrawerChange,
          endDrawer: endDrawer,
          onEndDrawerChanged: onEndDrawerChanged,
          drawerScrimColor: drawerScrimColor,
          backgroundColor: materialBackgroundColor,
          bottomNavigationBar: bottomNavigationBar,
          bottomSheet: bottomSheet,
          primary: primary,
          drawerDragStartBehavior: drawerDragStartBehavior,
          resizeToAvoidBottomInset: resizeToAvoidBottomInset,
          extendBody: extendBody,
          extendBodyBehindAppBar: extendBodyBehindAppBar,
          drawerEnableOpenDragGesture: drawerEnableOpenDragGesture,
          endDrawerEnableOpenDragGesture: endDrawerEnableOpenDragGesture,
          body: child);
    } else if (FlutterAgnosticOptions.isCupertino()) {
      _widget = CupertinoPageScaffold(
          navigationBar: navigationBar,
          backgroundColor: cupertinoBackgroundColor,
          resizeToAvoidBottomInset: resizeToAvoidBottomInset ??= true,
          child: child);
    } else {
      throw Exception('Your platform is currently not supported');
    }
  }

  @override
  Widget build(BuildContext context) {
    return _widget;
  }
}
