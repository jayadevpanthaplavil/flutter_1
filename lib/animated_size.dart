import 'package:flutter/material.dart';

class AnimatedSizePage extends StatefulWidget {
  const AnimatedSizePage({Key? key}) : super(key: key);

  @override
  State<AnimatedSizePage> createState() => _AnimatedSizePageState();
}

class _AnimatedSizePageState extends State<AnimatedSizePage> {
  bool _large= true;
  double _size=100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animated Size"),
      ),
      body: GestureDetector(
        onTap: (){
          setState(() {
            _size = _large ? 500:100;
            _large = !_large;
          });
        },
        child: AnimatedSize(duration: Duration(seconds: 3),
          child: FlutterLogo(size: _size),

        ),
      ),
    );
  }
}
