import 'package:flutter/material.dart';
import 'package:flutter_animation/global/standard.scaffold.dart';

class AnimatedCrossFadePage extends StatefulWidget {
  const AnimatedCrossFadePage({Key? key}) : super(key: key);

  @override
  State<AnimatedCrossFadePage> createState() => _AnimatedCrossFadePageState();
}

class _AnimatedCrossFadePageState extends State<AnimatedCrossFadePage> {
  bool _bool = true;

  @override
  Widget build(BuildContext context) {
    return StandardScaffold(
      widget: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextButton(
            onPressed: () {
              setState(() {
                _bool = !_bool;
              });
            },
            child: const Text(
              "Switch",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          AnimatedCrossFade(
            firstChild: Image.asset(
              'assets/images/gato.jpg',
              width: double.infinity,
            ),
            secondChild: Image.asset(
              'assets/images/gato2.jpg',
              width: double.infinity,
            ),
            crossFadeState: _bool ? CrossFadeState.showFirst : CrossFadeState.showSecond,
            duration: const Duration(seconds: 1),
          ),
        ],
      ),
    );
  }
}
