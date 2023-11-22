import 'package:flutter/material.dart';

class TablePage extends StatefulWidget {
  const TablePage({Key? key}) : super(key: key);

  @override
  State<TablePage> createState() => _TablePageState();
}

class _TablePageState extends State<TablePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Table"),
      ),
      body: Container(
        margin: EdgeInsets.all(20.0),
        child: Table(
          border: TableBorder.all(
            color: Colors.black54,
            style: BorderStyle.solid,
            width: 5
          ),
          children: [
            TableRow(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(child: Center(child: Text("Name")),),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(child: Center(child: Text("Age")),),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(child: Center(child: Text("Phone")),),
                )
              ]
            ),
            TableRow(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Container(child: Center(child: Text("Robin")),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Container(child: Center(child: Text("23")),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Container(child: Center(child: Text("9876543219")),),
                  )
                ]
            ),
            TableRow(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Container(child: Center(child: Text("Jayadev")),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Container(child: Center(child: Text("21")),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Container(child: Center(child: Text("9876543212")),),
                  )
                ]
            )
          ],
        ),
      ),
    );
  }
}
