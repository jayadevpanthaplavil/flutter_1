import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class StaggeredGridViewPage extends StatefulWidget {
  const StaggeredGridViewPage({Key? key}) : super(key: key);

  @override
  State<StaggeredGridViewPage> createState() => _StaggeredGridViewPageState();
}

class _StaggeredGridViewPageState extends State<StaggeredGridViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.menu),
          title: Text("Staggered GridView"),
        ),
      body: StaggeredGrid.count(
        crossAxisCount: 4,
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
        children:  [
          StaggeredGridTile.count(
            crossAxisCellCount: 2,
            mainAxisCellCount: 2,
            child: Tile(index: 0),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 2,
            mainAxisCellCount: 1,
            child: Tile(index: 1),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 1,
            mainAxisCellCount: 1,
            child: Tile(index: 2),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 1,
            mainAxisCellCount: 1,
            child: Tile(index: 3),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 4,
            mainAxisCellCount: 2,
            child: Tile(index: 4),
          ),
        ],
      ),

    );
  }
}

class Tile extends StatefulWidget {
  late int index;
   Tile({Key? key, required this.index}) : super(key: key);

  @override
  State<Tile> createState() => _TileState();
}

class _TileState extends State<Tile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
              'https://images.freeimages.com/images/large-previews/ddf/tour-d-eiffel-1447025.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Center(child: Text("${widget.index}")),
    );
  }
}

