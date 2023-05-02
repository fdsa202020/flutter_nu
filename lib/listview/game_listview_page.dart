import 'package:flutter/material.dart';

class Gameview extends StatefulWidget {
  const Gameview({Key? key}) : super(key: key);
  @override
  State<Gameview> createState() => _GameviewState();
}

class _GameviewState extends State<Gameview> {
  double douHeight = 100.0;
  double douWidth = 100.0;
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hot games of the year 2022',
                style: TextStyle(fontSize: 20.0),
              ),
            ],
          ),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: douHeight,
                width: douWidth,
                // ignore: prefer_const_constructors
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage('assets/images/Battle.jpg'),
                    fit: BoxFit.fill,
                  ),
                  shape: BoxShape.circle,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  // ignore: prefer_const_constructors
                  Text(
                    'Battlefield 4 Mobile',
                    style: TextStyle(fontSize: 20.0),
                  ),
                  Text(
                    'by Electronic Art',
                    style: TextStyle(fontSize: 15.0, color: Colors.grey),
                  ),
                  Text(
                    'Price: 1,250 THB',
                    style: TextStyle(fontSize: 15.0, color: Colors.red),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'Rating: 4.50',
                        style: TextStyle(fontSize: 15.0, color: Colors.black),
                      ),
                      Icon(Icons.star, color: Colors.yellow, size: 20),
                      Icon(Icons.star, color: Colors.yellow, size: 20),
                      Icon(Icons.star, color: Colors.yellow, size: 20),
                      Icon(Icons.star, color: Colors.yellow, size: 20),
                      Icon(Icons.star_half, color: Colors.yellow, size: 20),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: douHeight,
                width: douWidth,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage('assets/images/Diablo.png'),
                    fit: BoxFit.fill,
                  ),
                  shape: BoxShape.circle,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Diable Immortal',
                    style: TextStyle(fontSize: 20.0),
                  ),
                  Text(
                    'by Blizzard',
                    style: TextStyle(fontSize: 15.0, color: Colors.grey),
                  ),
                  Text(
                    'Price: 900 THB',
                    style: TextStyle(fontSize: 15.0, color: Colors.red),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Rating: 4.20',
                        style: TextStyle(fontSize: 15.0, color: Colors.black),
                      ),
                      Icon(Icons.star, color: Colors.yellow, size: 20),
                      Icon(Icons.star, color: Colors.yellow, size: 20),
                      Icon(Icons.star, color: Colors.yellow, size: 20),
                      Icon(Icons.star, color: Colors.yellow, size: 20),
                      Icon(Icons.star_half, color: Colors.yellow, size: 20),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: douHeight,
                width: douWidth,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage('assets/images/Final7.png'),
                    fit: BoxFit.fill,
                  ),
                  shape: BoxShape.circle,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Final Fantasy VII:Ever Crisis',
                    style: TextStyle(fontSize: 20.0),
                  ),
                  Text(
                    'by Square Enix',
                    style: TextStyle(fontSize: 15.0, color: Colors.grey),
                  ),
                  Text(
                    'Price: 1,500 THB',
                    style: TextStyle(fontSize: 15.0, color: Colors.red),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Rating: 3.80',
                        style: TextStyle(fontSize: 15.0, color: Colors.black),
                      ),
                      Icon(Icons.star, color: Colors.yellow, size: 20),
                      Icon(Icons.star, color: Colors.yellow, size: 20),
                      Icon(Icons.star, color: Colors.yellow, size: 20),
                      Icon(Icons.star_half, color: Colors.yellow, size: 20),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: douHeight,
                width: douWidth,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage('assets/images/Tomb.png'),
                    fit: BoxFit.fill,
                  ),
                  shape: BoxShape.circle,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Tomb Raider Reloaded',
                    style: TextStyle(fontSize: 20.0),
                  ),
                  Text(
                    'by Square Enix',
                    style: TextStyle(fontSize: 15.0, color: Colors.grey),
                  ),
                  Text(
                    'Price: 1,150 THB',
                    style: TextStyle(fontSize: 15.0, color: Colors.red),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Rating: 3.60',
                        style: TextStyle(fontSize: 15.0, color: Colors.black),
                      ),
                      Icon(Icons.star, color: Colors.yellow, size: 20),
                      Icon(Icons.star, color: Colors.yellow, size: 20),
                      Icon(Icons.star, color: Colors.yellow, size: 20),
                      Icon(Icons.star_half, color: Colors.yellow, size: 20),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: douHeight,
                width: douWidth,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage('assets/images/Valorant.png'),
                    fit: BoxFit.fill,
                  ),
                  shape: BoxShape.circle,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Valorant Mobile',
                    style: TextStyle(fontSize: 20.0),
                  ),
                  Text(
                    'by Riot Games',
                    style: TextStyle(fontSize: 15.0, color: Colors.grey),
                  ),
                  Text(
                    'Price: 450 THB',
                    style: TextStyle(fontSize: 15.0, color: Colors.red),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Rating: 4.50',
                        style: TextStyle(fontSize: 15.0, color: Colors.black),
                      ),
                      Icon(Icons.star, color: Colors.yellow, size: 20),
                      Icon(Icons.star, color: Colors.yellow, size: 20),
                      Icon(Icons.star, color: Colors.yellow, size: 20),
                      Icon(Icons.star, color: Colors.yellow, size: 20),
                      Icon(Icons.star_half, color: Colors.yellow, size: 20),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: douHeight,
                width: douWidth,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage('assets/images/pubgLogo.png'),
                    fit: BoxFit.fill,
                  ),
                  shape: BoxShape.circle,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'PUBG Mobile ',
                    style: TextStyle(fontSize: 20.0),
                  ),
                  Text(
                    'by Level Infinite',
                    style: TextStyle(fontSize: 15.0, color: Colors.grey),
                  ),
                  Text(
                    'Price: Free',
                    style: TextStyle(fontSize: 15.0, color: Colors.red),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Rating: 4.80',
                        style: TextStyle(fontSize: 15.0, color: Colors.black),
                      ),
                      Icon(Icons.star, color: Colors.yellow, size: 20),
                      Icon(Icons.star, color: Colors.yellow, size: 20),
                      Icon(Icons.star, color: Colors.yellow, size: 20),
                      Icon(Icons.star, color: Colors.yellow, size: 20),
                      Icon(Icons.star_half, color: Colors.yellow, size: 20),
                    ],
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
