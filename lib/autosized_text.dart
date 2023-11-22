import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class AutoSizedTextPage extends StatefulWidget {
  const AutoSizedTextPage({Key? key}) : super(key: key);

  @override
  State<AutoSizedTextPage> createState() => _AutoSizedTextPageState();
}

class _AutoSizedTextPageState extends State<AutoSizedTextPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AutoSized Text"),
      ),
      body: Container(
        width: 500,
        height: 300,
        child: AutoSizeText(
          'This string will be automatically resized to fit in two lines.',
          style: TextStyle(fontSize: 60),
          maxLines: 3,
          //maxFontSize: 120,
          minFontSize: 20,
        ),
      ),
    );
  }
}
