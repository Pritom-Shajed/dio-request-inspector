import 'package:dio_request_inspector/dio_request_inspector.dart';
import 'package:flutter/material.dart';

class DioRequestInspectorMain extends StatelessWidget {
  final Widget child;
  final bool showOnLongPress;
  final DioRequestInspector inspector;

  const DioRequestInspectorMain({Key? key, required this.child, required this.inspector, this.showOnLongPress = true})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPress: () {
        if (!showOnLongPress) return;
        if (!inspector.isInspectorEnabled) {
          return;
        }

        inspector.goToInspector();
      },
      child: child,
    );
  }
}
