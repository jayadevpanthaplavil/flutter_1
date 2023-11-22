import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';

class ExpandablePageViewPage extends StatefulWidget {
  const ExpandablePageViewPage({Key? key}) : super(key: key);

  @override
  State<ExpandablePageViewPage> createState() => _ExpandablePageViewPageState();
}

class _ExpandablePageViewPageState extends State<ExpandablePageViewPage> {
  List<Widget> myTabs = [Home(), Electronics()];
  int current = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Expandable Page View"),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: ExpandablePageView.builder(
            itemCount: 2,
            itemBuilder: (context, index) {
              return myTabs[index];
            }),
      ),
    );
  }
}

// class ExamplePage extends StatelessWidget {
//   final Color color;
//   final String text;
//   final double? height;
//   final double? width;
//
//   const ExamplePage(
//     this.color,
//     this.text, {
//     this.height = 0,
//     this.width = 0,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: height,
//       width: width,
//       color: color,
//       child: Center(
//         child: Text(text),
//       ),
//     );
//   }
// }

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 300,
        color: Colors.black12,
        child: Center(
          child: Text("Home"),
        ),
      ),
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
    return Container(
      child: Container(
        width: MediaQuery.of(context).size.width,
        color: Colors.green,
        height: 600,
        child: Center(
          child: Text("Electronics"),
        ),
      ),
    );
  }
}
