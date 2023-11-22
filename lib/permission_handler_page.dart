import 'package:flutter/material.dart';
import 'package:flutter_1/permission_handler_page.dart';
import 'package:permission_handler/permission_handler.dart';

class PermissionPage extends StatefulWidget {
  const PermissionPage({Key? key}) : super(key: key);

  @override
  State<PermissionPage> createState() => _PermissionPageState();
}

class _PermissionPageState extends State<PermissionPage> {

  Future<void> requestPermission() async {
    final permission=Permission.location;

    if(await permission.isDenied){
      await permission.request();
    }
  }


  @override
  void initState() {
    requestPermission();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text("Permission Page"),
      ),
      body: Text("hi"),
    );
  }
}
