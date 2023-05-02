import 'package:flutter/material.dart';

class nuheloo extends StatefulWidget {
  //change when reload app
  const nuheloo({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<nuheloo> createState() => _nuhelooState();
}

class _nuhelooState extends State<nuheloo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Hello NU",
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
