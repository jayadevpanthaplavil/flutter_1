import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class ZoomDrawerPage extends StatefulWidget {
  const ZoomDrawerPage({Key? key}) : super(key: key);

  @override
  State<ZoomDrawerPage> createState() => _ZoomDrawerPageState();
}

class _ZoomDrawerPageState extends State<ZoomDrawerPage> {
  final ZoomDrawerController _zoomdrawercontroller = ZoomDrawerController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            if (!_zoomdrawercontroller.isOpen!()){
              _zoomdrawercontroller.open!();
            }
            else{
              _zoomdrawercontroller.close!();
            }
          },
          icon: Icon(Icons.menu),
        ),
        title: Text("Zoom Drawer"),
      ),
      body: ZoomDrawer(
        controller: _zoomdrawercontroller,
        style: DrawerStyle.style2,
        menuScreen: MenuScreen(),
        mainScreen: MainScreen(),
        borderRadius: 24.0,
        showShadow: true,
        angle: -25.0,
        drawerShadowsBackgroundColor: Colors.white,
        slideWidth: MediaQuery.of(context).size.width*.65,
        openCurve: Curves.fastOutSlowIn,
        closeCurve: Curves.bounceIn,
      ),

    );
  }
}

class MenuScreen extends StatefulWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(body:ListView(
      children: [
        ListTile(
          leading: Icon(Icons.abc),
          title: Text("text"),
        ),
        ListTile(
          leading: Icon(Icons.abc),
          title: Text("text"),
        ),
        ListTile(
          leading: Icon(Icons.abc),
          title: Text("text"),
        )
      ],
    ));

  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("Main Screen"),
    );
  }
}
