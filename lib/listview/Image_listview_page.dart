import 'package:flutter/material.dart';

class Listview extends StatefulWidget {
  const Listview({Key? key}) : super(key: key);
  @override
  State<Listview> createState() => _ListviewState();
}

class _ListviewState extends State<Listview> {
  double douHeight = 50.0;
  double douWidth = 50.0;
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: douHeight,
                width: douWidth,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage('assets/images/bt.jpg'),
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
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'pubg logo',
                    style: TextStyle(fontSize: 20.0),
                  ),
                  Text(
                    'Level Infinite',
                    style: TextStyle(fontSize: 20.0, color: Colors.grey),
                  ),
                ],
              ),
            ),
          ],
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: douHeight,
                width: douWidth,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage('assets/images/pubgSnow.jpeg'),
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
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'pubg snow',
                    style: TextStyle(fontSize: 20.0),
                  ),
                  Text(
                    'Level Infinite',
                    style: TextStyle(fontSize: 20.0, color: Colors.grey),
                  ),
                ],
              ),
            ),
          ],
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: douHeight,
                width: douWidth,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage('assets/images/pubg01.png'),
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
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'pubg gun',
                    style: TextStyle(fontSize: 20.0),
                  ),
                  Text(
                    'Level Infinite',
                    style: TextStyle(fontSize: 20.0, color: Colors.grey),
                  ),
                ],
              ),
            ),
          ],
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: douHeight,
                width: douWidth,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage('assets/images/pubg02.jpeg'),
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
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'pubg sniper',
                    style: TextStyle(fontSize: 20.0),
                  ),
                  Text(
                    'Level Infinite',
                    style: TextStyle(fontSize: 20.0, color: Colors.grey),
                  ),
                ],
              ),
            ),
          ],
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: douHeight,
                width: douWidth,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage('assets/images/unnamed.png'),
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
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Rov',
                    style: TextStyle(fontSize: 20.0),
                  ),
                  Text(
                    'Garena',
                    style: TextStyle(fontSize: 20.0, color: Colors.grey),
                  ),
                ],
              ),
            ),
          ],
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: douHeight,
                width: douWidth,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage('assets/images/data.jpg'),
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
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'dota 2 ',
                    style: TextStyle(fontSize: 20.0),
                  ),
                  Text(
                    'Valve',
                    style: TextStyle(fontSize: 20.0, color: Colors.grey),
                  ),
                ],
              ),
            ),
          ],
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: douHeight,
                width: douWidth,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage(
                        'assets/images/leagueoflegends-1639513774570.jpg'),
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
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'league of legends ',
                    style: TextStyle(fontSize: 20.0),
                  ),
                  Text(
                    'Garena',
                    style: TextStyle(fontSize: 20.0, color: Colors.grey),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
