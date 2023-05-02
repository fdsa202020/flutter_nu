import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 300.0,
        width: 300.0,
        decoration: BoxDecoration(
          image: const DecorationImage(
            image: AssetImage('assets/images/saving.jpg'),
            fit: BoxFit.fill,
          ),
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 10.0, // soften the shadow
              spreadRadius: 10.0, //extend the shadow
              offset: Offset(
                0.0, // Move to right 5 horizontally
                0.0, // Move to bottom 5 Vertically
              ),
            )
          ],
        ),
      ),
    );
  }
}
