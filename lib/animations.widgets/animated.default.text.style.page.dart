import 'package:flutter/material.dart';
import 'package:flutter_animation/global/standard.scaffold.dart';

class AnimatedDefaultTextStylePage extends StatefulWidget {
  const AnimatedDefaultTextStylePage({Key? key}) : super(key: key);

  @override
  State<AnimatedDefaultTextStylePage> createState() => _AnimatedDefaultTextStylePageState();
}

class _AnimatedDefaultTextStylePageState extends State<AnimatedDefaultTextStylePage> {
  bool _first = true;
  double _fontSize = 60;
  Color _color = Colors.blueAccent;

  @override
  Widget build(BuildContext context) {
    return StandardScaffold(
      widget: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 120,
            child: AnimatedDefaultTextStyle(
              style: TextStyle(
                fontSize: _fontSize,
                color: _color,
                fontWeight: FontWeight.bold,
              ),
              duration: const Duration(milliseconds: 300),
              child: const Text("Flutter"),
            ),
          ),
          TextButton(
            onPressed: () {
              setState((){
                _fontSize = _first ? 90 : 60;
                _color = _first ? Colors.yellowAccent : Colors.blueAccent;
                _first = !_first;
              });
            },
            child: const Text(
              "Switch",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
