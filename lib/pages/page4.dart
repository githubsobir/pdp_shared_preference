import 'package:flutter/material.dart';

class Page4 extends StatefulWidget {
  static final  String id = "Page4";
  @override
  _Page4State createState() => _Page4State();
}

class _Page4State extends State<Page4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text("Hello world"),
          ),
    );
  }
}
