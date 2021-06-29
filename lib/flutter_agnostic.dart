library flutter_agnostic;

import 'dart:io';

export 'src/alert_dialog.dart';
export 'src/app.dart';
export 'src/button.dart';
export 'src/scaffold.dart';
export 'src/text_field.dart';

/// Static class to hold package configuration options.
///
/// Flutter Agnostic assumes that styling for Windows and Linux will be
/// desired as Material Design unless otherwise specified.
class FlutterAgnosticOptions {
  static bool useCupertinoWindows = false;
  static bool useCupertinoLinux = false;

  /// Return whether the application should use Material Design widgets.
  static bool isMaterial() {
    return Platform.isAndroid ||
        Platform.isFuchsia ||
        (Platform.isLinux && !useCupertinoLinux) ||
        (Platform.isWindows && !useCupertinoWindows);
  }

  /// Return whether the application should use Cupertino widgets.
  static bool isCupertino() {
    return Platform.isIOS ||
        Platform.isMacOS ||
        (Platform.isLinux && useCupertinoLinux) ||
        (Platform.isWindows && useCupertinoWindows);
  }
}
