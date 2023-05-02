import 'package:flutter/material.dart';
import 'package:flutter_application_hello/layoutfinal/home_page.dart';


import 'package:flutter_application_hello/layoutfinal/vat_page.dart';
main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //remove debug sign
      title: "Chut's App",
      theme: ThemeData(
        primarySwatch: Colors.blue, //set theme color
      ),
      home: const MainPage(title: "Final Exam N.Nanthawat"),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int intCurrentIndex = 0;
  String strWelcome = "Hello";
  final screens = [
    HomeFiPage(),
    VatPage(),
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text(widget.title),
        foregroundColor: Colors.black,
        titleTextStyle: TextStyle(
            color: Colors.black,  fontSize: 20),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.settings),
            color: Colors.black,
          ),
        ],
      ),
      body: screens[intCurrentIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: intCurrentIndex, //ปรับหน้าจอ setstate ให้เรา
          onTap: (index) => setState(() {
                intCurrentIndex = index;
              }),
          backgroundColor: Colors.white,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black,
          iconSize: 35,
          selectedFontSize: 16,
          unselectedFontSize: 14,
          //showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.receipt), label: ' Vat Receipt '),
            
          ]),
    );
  }
}
