import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class StaggeredGridViewPage2 extends StatefulWidget {
  const StaggeredGridViewPage2({Key? key}) : super(key: key);

  @override
  State<StaggeredGridViewPage2> createState() => _StaggeredGridViewPage2State();
}

class _StaggeredGridViewPage2State extends State<StaggeredGridViewPage2> {

  List<Choice> choices = const <Choice>[
    const Choice(title: 'Home', icon: Icons.home),
    const Choice(title: 'Contact', icon: Icons.contacts),
    const Choice(title: 'Map', icon: Icons.map),
    const Choice(title: 'Phone', icon: Icons.phone),
    const Choice(title: 'Camera', icon: Icons.camera_alt),
    const Choice(title: 'Setting', icon: Icons.settings),
    const Choice(title: 'Album', icon: Icons.photo_album),
    const Choice(title: 'WiFi', icon: Icons.wifi),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text("Staggered GridView"),
      ),
      body: MasonryGridView.count(
        crossAxisCount: 4,
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
        itemCount:choices.length ,
        itemBuilder: (context, index) {
          return Tile(
            choice:choices[index],
            index: index,
            extent: (index % 5 + 1) * 100,
          );
        },
      ),
    );
  }
}

class Tile extends StatefulWidget {
  late int index;
  late int extent;
  late Choice choice;
  Tile({Key? key, required this.index, required this.extent, required this.choice}) : super(key: key);

  @override
  State<Tile> createState() => _TileState();
}

class _TileState extends State<Tile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.parse('${widget.extent}'),
      color: Colors.blue,
      child: Center(child: Column(
        children: [
          Expanded(child: Icon(widget.choice.icon,)),
          Text('${widget.choice.title}'),
        ],
      ),),
    );
  }
}


class Choice {
  const Choice({required this.title, required this.icon});
  final String title;
  final IconData icon;
}