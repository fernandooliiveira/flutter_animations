import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_animation/global/standard.scaffold.dart';

class AnimatedBuilderPage extends StatefulWidget {
  const AnimatedBuilderPage({Key? key}) : super(key: key);

  @override
  State<AnimatedBuilderPage> createState() => _AnimatedBuilderPageState();
}

class _AnimatedBuilderPageState extends State<AnimatedBuilderPage> with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 1),
    vsync: this,
  )..repeat();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StandardScaffold(
      widget: Center(
        child: AnimatedBuilder(
          animation: _controller,
          child: const FlutterLogo(
            size: 100,
          ),
          builder: (context, child) {
            // return Transform.scale(
            //   // angle: _controller.value * 2.0 * math.pi,
            //   origin: Offset(1, 1),
            //   scaleY: _controller.value,
            //   scaleX: _controller.value,
            //   child: child,
            // );
            return Transform.rotate(
              angle: _controller.value * 2.0 * math.pi,
              child: child,
            );

            //NAO CONSEGUI USAR O TRANSLATE
            // return Transform.translate(
            //   offset: const Offset(0.0, 15.0),
            //   child: Container(
            //     padding: const EdgeInsets.all(8.0),
            //     color: const Color(0xFF7F7F7F),
            //     child: const Text('Quarter'),
            //   ),
            // );
          },
        ),
      ),
    );
  }
}
