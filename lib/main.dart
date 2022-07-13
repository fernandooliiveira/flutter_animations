import 'package:flutter/material.dart';
import 'package:flutter_animation/animations.widgets/animated.align.page.dart';
import 'package:flutter_animation/animations.widgets/animated.builder.page.dart';
import 'package:flutter_animation/animations.widgets/animated.container.page.dart';
import 'package:flutter_animation/animations.widgets/animated.cross.fade.page.dart';
import 'package:flutter_animation/animations.widgets/animated.default.text.style.page.dart';
import 'package:flutter_animation/animations.widgets/animated.icon.page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const AnimatedIconPage(),
    );
  }
}
