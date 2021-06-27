import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
    if (Platform.isAndroid) {
      _widget = ElevatedButton(
          key: key,
          onPressed: onPressed,
          style: style,
          focusNode: focusNode,
          autofocus: autofocus,
          clipBehavior: clibBehavior,
          child: child);
    } else if (Platform.isIOS) {
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
      throw Exception(
          'flutter_agnostic is currently only intended for phone applicaitons');
    }
  }

  @override
  Widget build(BuildContext context) {
    return _widget;
  }
}
