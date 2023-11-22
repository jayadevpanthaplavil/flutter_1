import 'package:flutter/material.dart';

class AnimatedOpacityPage extends StatefulWidget {
  const AnimatedOpacityPage({Key? key}) : super(key: key);

  @override
  State<AnimatedOpacityPage> createState() => _AnimatedOpacityPageState();
}

class _AnimatedOpacityPageState extends State<AnimatedOpacityPage> {
  double _opacitylevel = 1.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animated Opacity"),
      ),
      body: GestureDetector(
        onTap: () {
          setState(() {
            if (_opacitylevel == 1.0) {
              _opacitylevel = 0.0;
            } else {
              _opacitylevel = 1.0;
            }
          });
        },
        child: AnimatedOpacity(
          opacity: _opacitylevel,
          duration: Duration(seconds: 1),
          child: FlutterLogo(size: 400,),
        ),
      ),
    );
  }
}
