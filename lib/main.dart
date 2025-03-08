// filepath: /Users/alanoudalkhulaifi/Downloads/QRCS-App/prototype_app/lib/main.dart
import 'package:flutter/material.dart';
import 'package:accessibility_tools/accessibility_tools.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //builder: (context, child) => AccessibilityTools(child: child),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('assets/plantCoins.jpg'),
                SizedBox(height: 20), // Add some space between the image and the text gap
                SizedBox(height: 220), // Gap for text to go
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 100,
                      height: 50,
                      color: Colors.red,
                    ),
                    SizedBox(width: 20), // Add some space between the buttons
                    Container(
                      width: 100,
                      height: 50,
                      color: Colors.red,
                    ),
                    SizedBox(width: 20), // Add some space between the buttons
                    Container(
                      width: 100,
                      height: 50,
                      color: Colors.red,
                    ),
                  ],
                ),
                SizedBox(height: 20), // Add some space between the rows
                Container(
                  width: 340, // The combined width of the three buttons plus the spaces
                  height: 50,
                  color: Colors.red,
                ),
                SizedBox(height: 20), // Add some space between the rows
                Column(
                  children: [
                    Container(
                      width: 340,
                      height: 50,
                      color: Colors.purple,
                    ),
                    SizedBox(height: 20), // Add some space between the buttons
                    Container(
                      width: 340,
                      height: 50,
                      color: Colors.purple,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            top: 20,
            right: 20,
            child: Row(
              children: [
                // Added grey circular background to the shopping cart icon
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(Icons.shopping_cart, size: 50),
                ),
                SizedBox(width: 20), // Add some space between the icons
                // Added grey circular background to the menu icon
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(Icons.menu, size: 50),
                ),
              ],
            ),
          ),
                    // Added back button with grey circular background
          Positioned(
            top: 20,
            left: 20,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey,
                shape: BoxShape.circle,
              ),
              child: IconButton(
                icon: Icon(Icons.arrow_back, size: 50),
                onPressed: () {
                  // Add your back button functionality here
                  Navigator.pop(context);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}