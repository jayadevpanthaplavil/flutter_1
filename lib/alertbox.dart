import 'dart:io';

import 'package:flutter/material.dart';

class AlertBoxPage extends StatefulWidget {
  const AlertBoxPage({Key? key}) : super(key: key);

  @override
  State<AlertBoxPage> createState() => _AlertBoxPageState();
}

class _AlertBoxPageState extends State<AlertBoxPage> {
  TextEditingController _textFieldController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.menu,
          color: Colors.black,
        ),
        title: Text(
          "Alert Box",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.greenAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: TextButton(
                child: Text('EXIT'),
                onPressed: () {
                  showDialog(
                    barrierDismissible: false,
                      context: context,
                      builder: (BuildContext context) {
                      return SimpleDialog(
                        title: Text("Gender"),
                        children: [
                          SimpleDialogOption(
                            child: Text('Male'),
                            onPressed: (){},
                          ),SimpleDialogOption(
                            child: Text('Female'),
                            onPressed: (){},
                          ),
                          SimpleDialogOption(
                            child: Text('Others'),
                            onPressed: (){},
                          )
                        ],
                      );


                        // return AlertDialog(
                        //   title: Text("Are you sure want to exit?"),
                        //   content: TextField(controller: _textFieldController,
                        //     decoration: InputDecoration(hintText: "TextField in Dialog"), ),
                        //   actions: [
                        //     TextButton(
                        //         onPressed: () {
                        //           final snackbar=SnackBar(content: Text('${_textFieldController.text.toString()}'),
                        //               action: SnackBarAction(
                        //                 label: 'Undo',
                        //                 onPressed: () {
                        //                   // Some code to undo the change.
                        //                 },
                        //               ),);
                        //           ScaffoldMessenger.of(context).showSnackBar(snackbar);
                        //           // print('${_textFieldController.text.toString()}');
                        //           Navigator.pop(context);
                        //           //exit(0);
                        //         },
                        //         child: Text('Yes'))
                        //   ],
                        // );
                      });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
