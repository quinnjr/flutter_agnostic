library flutter_agnostic;

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
}
