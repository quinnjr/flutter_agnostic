import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_agnostic/flutter_agnostic.dart'
    show FlutterAgnosticOptions;

/// Provides a wrapper around underlying [CircularProgressIndicator] and [CupertinoActivityIndicator] widgets.
class AgnosticProgressIndicator extends StatelessWidget {
  /// The [CircularProgressIndicator] or [CupertinoActivityIndicator] returned by the build function.
  late final Widget _widget;

  AgnosticProgressIndicator(
      {Key? key,
      double? value,
      Color? backgroundColor,
      Color? color,
      Animation<Color?>? valueColor,
      double strokeWidth = 4.0,
      String? semanticLabel,
      String? semanticsValue,
      bool animating = true,
      double radius = 10})
      : super(key: key) {
    if (FlutterAgnosticOptions.isMaterial()) {
      _widget = CircularProgressIndicator(
        key: key,
        value: value,
        backgroundColor: backgroundColor,
        color: color,
        valueColor: valueColor,
        strokeWidth: strokeWidth,
        semanticsLabel: semanticLabel,
        semanticsValue: semanticsValue,
      );
    } else if (FlutterAgnosticOptions.isCupertino()) {
      _widget = CupertinoActivityIndicator(
          key: key, animating: animating, radius: radius);
    } else {
      throw Exception('Your platform is not supported');
    }
  }

  @override
  Widget build(BuildContext context) {
    return _widget;
  }
}
