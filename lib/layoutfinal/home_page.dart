import 'package:flutter/material.dart';

class HomeFiPage extends StatefulWidget {
  const HomeFiPage({Key? key}) : super(key: key);
  @override
  State<HomeFiPage> createState() => _HomeFiPageState();
}

class _HomeFiPageState extends State<HomeFiPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 300.0,
        width: 300.0,
        decoration: BoxDecoration(
          image: const DecorationImage(
            image: AssetImage('assets/images/Shopping.png'),
            fit: BoxFit.fill,
          ),
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: Colors.white,
              //extend the shadow
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
