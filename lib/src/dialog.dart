import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_agnostic/flutter_agnostic.dart'
    show FlutterAgnosticOptions;

/// Provides a wrapper around the underlying [SimpleDialog] and [CupertinoDialog] widgets.
class AgnosticDialog extends StatelessWidget {
  /// The [SimpleDialog] or [CupertinoDialog] returned by the build function.
  late final Widget _widget;

  AgnosticDialog(
      {Key? key,
      Widget? title,
      EdgeInsetsGeometry titlePadding =
          const EdgeInsets.fromLTRB(24.0, 24.0, 24.0, 0.0),
      TextStyle? titleTextStyle,
      List<Widget>? children,
      EdgeInsetsGeometry contentPadding =
          const EdgeInsets.fromLTRB(0.0, 12.0, 0.0, 16.0),
      Color? backgroundColor,
      double? elevation,
      String? semanticLabel,
      EdgeInsets insetPadding =
          const EdgeInsets.symmetric(horizontal: 40.0, vertical: 24.0),
      Clip clipBehavior = Clip.none,
      ShapeBorder? shape})
      : super(key: key) {
    if (FlutterAgnosticOptions.isMaterial()) {
      _widget = SimpleDialog(
        key: key,
        title: title,
        titlePadding: titlePadding,
        titleTextStyle: titleTextStyle,
        children: children,
        contentPadding: contentPadding,
        backgroundColor: backgroundColor,
        elevation: elevation,
        semanticLabel: semanticLabel,
        insetPadding: insetPadding,
        clipBehavior: clipBehavior,
        shape: shape,
      );
    } else if (FlutterAgnosticOptions.isCupertino()) {
      // TODO: Widget is missing from toolkit?
      //_widget = CupertinoDialog();
      throw Exception('CupertinoDialog is curretly not working');
    } else {
      throw Exception('Your platform is not supported');
    }
  }

  @override
  Widget build(BuildContext context) {
    return _widget;
  }
}
