import 'package:flutter/material.dart';

class GridViewPage2 extends StatefulWidget {
  const GridViewPage2({Key? key}) : super(key: key);

  @override
  State<GridViewPage2> createState() => _GridViewPage2State();
}

class _GridViewPage2State extends State<GridViewPage2> {

  List<String> images = [
    "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",
    "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",
    "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",
    "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text("GridView"),
      ),
      body: GridView.builder(
        itemCount: images.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 4,
            mainAxisSpacing: 8,
          ),
          itemBuilder:(BuildContext context,int index){
            return Image.network(images[index]);
          }
      ),
    );
  }
}
