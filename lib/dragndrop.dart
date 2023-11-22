import 'package:flutter/material.dart';

class DragNDrop extends StatefulWidget {
  const DragNDrop({Key? key}) : super(key: key);

  @override
  State<DragNDrop> createState() => _DragNDropState();
}

class _DragNDropState extends State<DragNDrop> {
  bool _isDropped=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.menu,
          color: Colors.black,
        ),
        title: Text(
          "Drag N Drop",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.greenAccent,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Draggable<String>(
                  data: 'pizza',
                  child: Container(
                    width: 180,
                    height: 180,
                    child: Image.asset('assets/images/pizza.png'),
                  ),
                  feedback: Container(
                      width: 180,
                      height: 180,
                      child: Image.asset('assets/images/pizza.png')),
                  childWhenDragging: Container(
                    width: 180,
                    height: 180,
                  ),
                ),
                DragTarget(builder: (
                  BuildContext context,
                  List<dynamic> accepted,
                  List<dynamic> rejected,
                ) {
                  return Container(
                    width: 200,
                    height: 200,
                    child: Image.asset(_isDropped ? 'assets/images/pizzacart.jpg':'assets/images/cart.png'),
                  );
                },
                  onWillAccept: (data) {
                    return data == 'pizza';
                  },
                  onAccept: (data) {
                    setState(() {
                      _isDropped = true;
                    });
                  },),
                ElevatedButton(onPressed: (){
                  setState(() {
                    _isDropped=false;
                  });
                }, child: Text('Clear Cart'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
