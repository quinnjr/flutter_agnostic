import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_agnostic/flutter_agnostic.dart'
    show FlutterAgnosticOptions;

/// Provides a wrapper around underlying [CircularProgressIndicator] and [CupertinoActivityIndicator] widgets.
class AgnosticProgressIndicator extends StatelessWidget {
  /// The [CircularProgressIndicator] or [CupertinoActivityIndicator] returned by the build function.
  late final Widget _widget;

  AgnosticProgressIndicator({
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
