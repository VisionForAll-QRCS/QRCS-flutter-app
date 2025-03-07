// filepath: /Users/alanoudalkhulaifi/Downloads/QRCS-App/prototype_app/lib/main.dart
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/plantCoins.jpg'),
            SizedBox(height: 20), // Add some space between the image and the icons
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.shopping_cart, size: 50),
                SizedBox(width: 20), // Add some space between the icons
                Icon(Icons.menu, size: 50),
              ],
            ),
          ],
        ),
      ),
    );
  }
}