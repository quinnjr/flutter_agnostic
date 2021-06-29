import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_agnostic/flutter_agnostic.dart'
    show FlutterAgnosticOptions;

/// Provides a wrapper around the underlying [ElevatedButton] and [CupertinoButton] widgets.
class AgnosticButton extends StatelessWidget {
  /// The [ElevatedButton] or [CupertinoButton] to be returned by the build function.
  late final Widget _widget;

  AgnosticButton(
      {Key? key,
      required VoidCallback? onPressed,
      VoidCallback? onLongPress,
      ButtonStyle? style,
      FocusNode? focusNode,
      bool autofocus = false,
      Clip clibBehavior = Clip.none,
      EdgeInsetsGeometry? padding,
      Color? color,
      CupertinoDynamicColor disabledColor =
          CupertinoColors.quaternarySystemFill,
      double minSize = kMinInteractiveDimensionCupertino,
      double pressedOpacity = 0.4,
      BorderRadius borderRadius = const BorderRadius.all(Radius.circular(8.0)),
      AlignmentGeometry alignment = Alignment.center,
      required Widget child})
      : super(key: key) {
    if (FlutterAgnosticOptions.isMaterial()) {
      _widget = ElevatedButton(
          key: key,
          onPressed: onPressed,
          style: style,
          focusNode: focusNode,
          autofocus: autofocus,
          clipBehavior: clibBehavior,
          child: child);
    } else if (FlutterAgnosticOptions.isCupertino()) {
      _widget = CupertinoButton(
          key: key,
          onPressed: onPressed,
          padding: padding,
          color: color,
          disabledColor: disabledColor,
          minSize: minSize,
          pressedOpacity: pressedOpacity,
          borderRadius: borderRadius,
          alignment: alignment,
          child: child);
    } else {
      throw Exception('Your platform is not supported');
    }
  }

  @override
  Widget build(BuildContext context) {
    return _widget;
  }
}
