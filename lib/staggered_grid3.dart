import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class StaggeredGridViewPage3 extends StatefulWidget {
  const StaggeredGridViewPage3({Key? key}) : super(key: key);

  @override
  State<StaggeredGridViewPage3> createState() => _StaggeredGridViewPage3State();
}

class _StaggeredGridViewPage3State extends State<StaggeredGridViewPage3> {

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
    title: Text("GridView"),
    ),
      body: GridView.custom(

        gridDelegate: SliverQuiltedGridDelegate(
          crossAxisCount: 4,
          mainAxisSpacing: 4,
          crossAxisSpacing: 4,
          repeatPattern: QuiltedGridRepeatPattern.mirrored,
          pattern: [
            QuiltedGridTile(2, 2),
            QuiltedGridTile(1, 1),
            QuiltedGridTile(1, 1),
            QuiltedGridTile(1, 2),
          ],
        ),
        childrenDelegate: SliverChildBuilderDelegate(
          childCount: choices.length,

              (context, index) {
            return Tile(index: index, choice: choices[index],);

          },
        ),
      )
      ,
    );
  }
}

class Tile extends StatefulWidget {
  late int index;

  late Choice choice;
  Tile({Key? key, required this.index,  required this.choice}) : super(key: key);

  @override
  State<Tile> createState() => _TileState();
}

class _TileState extends State<Tile> {
  @override
  Widget build(BuildContext context) {
    return Container(

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