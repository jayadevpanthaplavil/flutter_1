import 'package:flutter/material.dart';

class Sliver_AppBarPage extends StatefulWidget {
  const Sliver_AppBarPage({Key? key}) : super(key: key);

  @override
  State<Sliver_AppBarPage> createState() => _Sliver_AppBarPageState();
}

class _Sliver_AppBarPageState extends State<Sliver_AppBarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[SliverAppBar(
          snap: true,
          pinned: true,
          floating: true,
          expandedHeight: 150,
          flexibleSpace: FlexibleSpaceBar(title: Text("Facebook"),),
        ),
          SliverList(delegate: SliverChildBuilderDelegate(
            childCount: 20,
              (context,index)=>
                ListTile(
                    tileColor: (index % 2 == 0) ? Colors.white : Colors.green[50],
                    title: Center(
                      child: Text('$index',
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 50,
                              color: Colors.greenAccent[400]) //TextStyle
                      ), //Text
                    )
                )


          ),)
        ],
        
      ),
    );
  }
}
