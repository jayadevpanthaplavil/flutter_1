import 'package:flutter/material.dart';
import 'dart:math' as math;

class AnimatedBuilderPage extends StatefulWidget {
  const AnimatedBuilderPage({Key? key}) : super(key: key);

  @override
  State<AnimatedBuilderPage> createState() => _AnimatedBuilderPageState();
}

class _AnimatedBuilderPageState extends State<AnimatedBuilderPage>
    with TickerProviderStateMixin {
  late AnimationController _controller =
      AnimationController(vsync: this, duration: Duration(seconds: 3))..repeat();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Animated Builder"),
      ),
      body: AnimatedBuilder(
        animation: _controller,
        child: Container(
          child: Image.asset('assets/images/spiral.png',fit: BoxFit.contain,),
        ),
        builder: (BuildContext context, Widget? child) {
          return Transform.rotate(angle:_controller.value*2*math.pi,child: child, );
        },
      ),
    );
  }
}
