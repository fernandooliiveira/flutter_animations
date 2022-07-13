import 'package:flutter/material.dart';
import 'package:flutter_animation/global/standard.scaffold.dart';

class AnimatedContainerPage extends StatefulWidget {
  const AnimatedContainerPage({Key? key}) : super(key: key);

  @override
  State<AnimatedContainerPage> createState() => _AnimatedContainerPageState();
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return StandardScaffold(
      widget: GestureDetector(
        onTap: () {
          setState(() {
            selected = !selected;
          });
        },
        child: Center(
          child: AnimatedContainer(
            width: selected ? 200.0 : 100.0,
            height: selected ? 100.0 : 200.0,
            color: selected ? Colors.blueGrey : Colors.white,
            alignment: selected ? Alignment.center : AlignmentDirectional.topCenter,
            duration: const Duration(seconds: 2),
            curve: Curves.elasticOut,
            child: const FlutterLogo(size: 75,),
          ),
        ),
      ),
    );
  }
}
