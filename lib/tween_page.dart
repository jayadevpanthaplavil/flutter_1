import 'package:flutter/material.dart';


class FlutterAnimations extends StatefulWidget {
  const FlutterAnimations({super.key});

  @override
  _FlutterAnimationsState createState() => _FlutterAnimationsState();
}

class _FlutterAnimationsState extends State<FlutterAnimations> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Color?> _animation;
  late Animation<Size?> _animation2;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(vsync: this,
      duration: const Duration(
        milliseconds: 4000,
      ),
    );

    _animation = ColorTween(
      begin: Colors.red,
      end: Colors.yellowAccent,
    ).animate(_controller);
    _animation2 = SizeTween(
      begin: Size(100.0,100.0),
      end: Size(200.0,200.0),
    ).animate(_controller);

    _animation.addListener(() {
      setState(() {});
    });

    _controller.forward();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: _animation2.value?.height,
          width: _animation2.value?.width,
          color: _animation.value,
        ),
      ),
    );
  }
}
