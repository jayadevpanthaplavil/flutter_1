import 'package:flutter/material.dart';

class StackPage extends StatefulWidget {
  const StackPage({Key? key}) : super(key: key);

  @override
  State<StackPage> createState() => _StackPageState();
}

class _StackPageState extends State<StackPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text("Stack"),
      ),
      body: Container(
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Image.asset(
                "assets/images/kalyansilks.jpg",
                fit: BoxFit.fitHeight,
              ),
            ),
            Positioned(
              top: 40,
              left: 0,
              child: Container(
                height: 110,
                child: Image.asset(
                  "assets/images/ribbon.png",
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Positioned(
              top: 85,
              left: 42,
              child: Container(
                child: Text(
                  "ആടി സെയിൽ",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 19,
                      fontWeight: FontWeight.bold,)
                ),
              ),
            ),
            Positioned(
              bottom: 20,
              right: 20,
              child: Row(
                children: [
                  Container(
                    child: FloatingActionButton.extended(onPressed: (){}, label: const Text('Add'),
                        icon: const Icon(Icons.add),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    child: FloatingActionButton(
                      onPressed: (){},
                      child: Icon(Icons.favorite),
                      backgroundColor: Colors.red,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
