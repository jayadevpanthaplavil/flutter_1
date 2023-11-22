import 'package:flutter/material.dart';

class TabBarPage extends StatefulWidget {
  const TabBarPage({Key? key}) : super(key: key);

  @override
  State<TabBarPage> createState() => _TabBarPageState();
}

class _TabBarPageState extends State<TabBarPage> with TickerProviderStateMixin {
  late TabController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = TabController(length: 3, vsync: this);
  }

  List<Widget> mytabs = [Homee(), Lap(), Sticky()];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: mytabs.length,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          title: Text("TabBar"),
          bottom: TabBar(
            controller: _controller,
            tabs: [
              Icon(Icons.home),
              Icon(Icons.laptop),
              Icon(Icons.sticky_note_2)
            ],
          ),
        ),
        body: TabBarView(controller: _controller, children: mytabs),
      ),
    );
  }
}

class Homee extends StatefulWidget {
  const Homee({Key? key}) : super(key: key);

  @override
  State<Homee> createState() => _HomeeState();
}

class _HomeeState extends State<Homee> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
    );
  }
}

class Lap extends StatefulWidget {
  const Lap({Key? key}) : super(key: key);

  @override
  State<Lap> createState() => _LapState();
}

class _LapState extends State<Lap> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.greenAccent,
    );
  }
}

class Sticky extends StatefulWidget {
  const Sticky({Key? key}) : super(key: key);

  @override
  State<Sticky> createState() => _StickyState();
}

class _StickyState extends State<Sticky> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
    );
  }
}
