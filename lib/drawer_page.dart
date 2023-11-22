import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
// import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';

class Drawer_Page extends StatefulWidget {
  const Drawer_Page({Key? key}) : super(key: key);

  @override
  State<Drawer_Page> createState() => _Drawer_PageState();
}

class _Drawer_PageState extends State<Drawer_Page> {
  final GlobalKey<ScaffoldState> _scaffoldkey = new GlobalKey<ScaffoldState>();
  List<Widget> page = [Home(), Electronics(), About()];
  int current = 0;

  void _onItemTapped(int index){
    setState(() {
      current=index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldkey,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            if (_scaffoldkey.currentState!.isDrawerOpen) {
              _scaffoldkey.currentState!.closeDrawer();
            } else {
              _scaffoldkey.currentState!.openDrawer();
            }
          },
        ),
        title: Text("Flipkart"),
      ),
      body: page[current],
      drawer: Drawer(
        child: ListView(
          children: [
            Container(
                color: Colors.blue,
                width: double.infinity,
                height: 200,
                child: DrawerHeader(
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 10),
                          height: 120,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image:
                                      AssetImage('assets/images/actor.jpeg'))),
                        ),
                        Text(
                          "Robert Downey  Jr",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                )),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {
                Navigator.pop(context);
                setState(() {
                  current = 0;
                });
              },
            ),
            ListTile(
              leading: Icon(Icons.laptop),
              title: Text("Electronics"),
              onTap: () {
                Navigator.pop(context);
                setState(() {
                  current = 1;
                });
              },
            ),
            ListTile(
              leading: Icon(Icons.sticky_note_2),
              title: Text("About"),
              onTap: () {
                Navigator.pop(context);
                setState(() {
                  current = 2;
                });
              },
            )
          ],
        ),
      ),


      // bottomNavigationBar: BottomNavigationBar(
      //   items: [
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       label: 'Home',
      //     ),
      //     BottomNavigationBarItem(
      //         icon: Icon(Icons.laptop), label: 'Electronics'),
      //     BottomNavigationBarItem(icon: Icon(Icons.sticky_note_2),label: "About")
      //   ],
      //
      //   onTap: _onItemTapped,
      //   currentIndex: current,
      // ),

      // bottomNavigationBar: ConvexAppBar(
      //   items: [
      //     TabItem(icon:Icon(Icons.home)),
      //     TabItem(icon: Icon(Icons.laptop)),
      //     TabItem(icon: Icon(Icons.sticky_note_2))
      //   ],
      //   style: TabStyle.flip,
      //   onTap: _onItemTapped,
      // ),

      // bottomNavigationBar: CurvedNavigationBar(
      //   height:75,
      //   items: [
      //     Icon(Icons.home),Icon(Icons.laptop),Icon(Icons.sticky_note_2)
      //   ],
      //   onTap: _onItemTapped,
      // ),

      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.blueAccent,
        items:[
          CurvedNavigationBarItem(
            child: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          CurvedNavigationBarItem(
            child: Icon(Icons.laptop),
            label: 'Electronics',
          ),
          CurvedNavigationBarItem(
            child: Icon(Icons.sticky_note_2),
            label: 'About',
          ),
        ],
        onTap: _onItemTapped,
      ),

    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("home page"),
      backgroundColor: Colors.cyanAccent,
    );
  }
}

class Electronics extends StatefulWidget {
  const Electronics({Key? key}) : super(key: key);

  @override
  State<Electronics> createState() => _ElectronicsState();
}

class _ElectronicsState extends State<Electronics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("electronics page"),
    );
  }
}

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("about page"),
    );
  }
}
