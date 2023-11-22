import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ToastAppPage extends StatefulWidget {
  const ToastAppPage({Key? key}) : super(key: key);

  @override
  State<ToastAppPage> createState() => _ToastAppPageState();
}

class _ToastAppPageState extends State<ToastAppPage> {
  late FToast ftoast;

  @override
  void initState() {
    ftoast = FToast();
    ftoast.init(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.menu,
          color: Colors.black,
        ),
        title: Text(
          "Toast App",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.cyanAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: ElevatedButton(
                  onPressed: () {
                    // Fluttertoast.showToast(msg: "DON KOMBAN",
                    //   gravity: ToastGravity.BOTTOM,
                    //   backgroundColor: Colors.cyanAccent,
                    //   textColor: Colors.black,
                    // );
                    ftoast.showToast(
                        child: Container(
                      height: 200,
                      width: 200,
                      color: Colors.cyanAccent,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.check),
                          SizedBox(
                            width: 12.0,
                          ),
                          Text("This is a Custom Toast"),
                        ],
                      ),
                    ));
                  },
                  child: Text("Show Toast")),
            ),
          ],
        ),
      ),
    );
  }
}
