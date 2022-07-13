import 'package:flutter/material.dart';

class StandardScaffold extends StatelessWidget {
  final Widget widget;

  const StandardScaffold({
    Key? key,
    required this.widget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.black.withOpacity(0.3),
        child: widget,
      ),
    );
  }
}
