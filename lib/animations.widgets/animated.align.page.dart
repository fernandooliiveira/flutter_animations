import 'package:flutter/material.dart';
import 'package:flutter_animation/global/standard.scaffold.dart';

class AnimatedAlignPage extends StatefulWidget {
  const AnimatedAlignPage({Key? key}) : super(key: key);

  @override
  State<AnimatedAlignPage> createState() => _AnimatedAlignPageState();
}

class _AnimatedAlignPageState extends State<AnimatedAlignPage> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return StandardScaffold(
      widget: GestureDetector(
        onTap: () {
          setState((){
            selected = !selected;
          });
        },
        child: Center(
          child: Container(
            height: 250,
            color: Colors.blueGrey,
            child: AnimatedAlign(
              alignment:
                  selected ? Alignment.topRight : Alignment.bottomLeft,
              duration: const Duration(seconds: 1),
              curve: Curves.fastOutSlowIn,
              child: const FlutterLogo(size: 50,),
            ),
          ),
        ),
      ),
    );
  }
}
