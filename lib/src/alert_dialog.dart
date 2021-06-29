import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_agnostic/flutter_agnostic.dart'
    show FlutterAgnosticOptions;

/// Provides a wrapper around the underlying [AlertDialog] and [CupertinoAlertDialog] widgets.
class AgnosticAlertDialog extends StatelessWidget {
  /// The [AlertDialog] or [CupertinoAlertDialog] returned by the build function.
  late final Widget _widget;

  AgnosticAlertDialog(
      {Key? key,
      Widget? title,
      EdgeInsetsGeometry? titlePadding,
      TextStyle? titleTextStyle,
      Widget? content,
      EdgeInsetsGeometry contentPadding =
          const EdgeInsets.fromLTRB(24.0, 20.0, 24.0, 24.0),
      TextStyle? contentTextStyle,
      List<Widget>? actions,
      EdgeInsetsGeometry actionsPadding = EdgeInsets.zero,
      VerticalDirection? actionsOverflowDirection,
      double? actionsOverflowButtonSpacing,
      EdgeInsetsGeometry? buttonPadding,
      Color? backgroundColor,
      double? elevation,
      String? semanticLabel,
      EdgeInsets insetPadding =
          const EdgeInsets.symmetric(horizontal: 40.0, vertical: 24.0),
      Clip clipBehavior = Clip.none,
      ShapeBorder? shape,
      bool scrollable = false,
      ScrollController? scrollController,
      ScrollController? actionsScrollController,
      Duration insetAnimationDuration = const Duration(milliseconds: 100),
      Curve insetAnimationCurve = Curves.decelerate})
      : super(key: key) {
    if (FlutterAgnosticOptions.isMaterial()) {
      _widget = AlertDialog(
          key: key,
          title: title,
          titlePadding: titlePadding,
          titleTextStyle: titleTextStyle,
          content: content,
          contentPadding: contentPadding,
          contentTextStyle: contentTextStyle,
          actions: actions,
          actionsOverflowDirection: actionsOverflowDirection,
          actionsOverflowButtonSpacing: actionsOverflowButtonSpacing,
          buttonPadding: buttonPadding,
          backgroundColor: backgroundColor,
          elevation: elevation,
          semanticLabel: semanticLabel,
          insetPadding: insetPadding,
          clipBehavior: clipBehavior,
          shape: shape,
          scrollable: scrollable);
    } else if (FlutterAgnosticOptions.isCupertino()) {
      actions = actions ??= const <Widget>[];
      _widget = CupertinoAlertDialog(
          key: key,
          title: title,
          content: content,
          actions: actions,
          scrollController: scrollController,
          actionScrollController: actionsScrollController,
          insetAnimationDuration: insetAnimationDuration,
          insetAnimationCurve: insetAnimationCurve);
    } else {
      throw Exception('Your platform is not supported');
    }
  }

  @override
  Widget build(BuildContext context) {
    return _widget;
  }
}
