import 'package:flutter/material.dart';

class AnimatedAlignPage extends StatefulWidget {
  const AnimatedAlignPage({Key? key}) : super(key: key);

  @override
  State<AnimatedAlignPage> createState() => _AnimatedAlignPageState();
}

class _AnimatedAlignPageState extends State<AnimatedAlignPage> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animated Align"),
      ),
      body: GestureDetector(
        onTap: (){
          setState(() {
            selected=!selected;
          });
        },
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: Image.asset('assets/images/football.jpg').image)),
          child: AnimatedAlign(
            alignment: selected ? Alignment.centerLeft : Alignment.centerRight,
            duration: Duration(seconds: 2),
            child: Container(
              width: 30,
              height: 30,
              child: Image.asset('assets/images/football.png',
          ),
            ),
        ),
    ),
      ));
  }
}
