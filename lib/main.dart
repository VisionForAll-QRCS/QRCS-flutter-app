import 'package:flutter/material.dart';


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
                      width: 70,
                      height: 77,
                      decoration: BoxDecoration(
                        color: Color(0xFFA03123),
                        borderRadius: BorderRadius.circular(10), // Curved edges
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center, // Center the texts vertically
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              'assets/icon-1.png', // Path to your image
                              width: 30, // Adjust the width of the image
                              height: 25, // Adjust the height of the image
                            ),
                            Spacer(),
                            Text(
                              'Expiring',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Sans Serif',
                                fontWeight: FontWeight.bold,
                                fontSize: 13,
                              ),
                            ),
                            Text(
                              '784 days',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Sans Serif',
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      )
                    ),
                    SizedBox(width: 15), // Add some space between the buttons                    
                    Container(
                      width: 105,
                      height: 77,
                      decoration: BoxDecoration(
                        color: Color(0xFFA03123),
                        borderRadius: BorderRadius.circular(10), // Curved edges
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center, // Center the texts vertically
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              'assets/icon-2.png', // Path to your image
                              width: 30, // Adjust the width of the image
                              height: 27, // Adjust the height of the image
                            ),
                            Spacer(),
                            Text(
                              'Beneficiaries',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Sans Serif',
                                fontWeight: FontWeight.bold,
                                fontSize: 13,
                              ),
                            ),
                            Text(
                              '70,000',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Sans Serif',
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      )
                    ),
                    SizedBox(width: 15), // Add some space between the buttons
                    Container(
                      width: 145,
                      height: 77,
                      decoration: BoxDecoration(
                        color: Color(0xFFA03123),
                        borderRadius: BorderRadius.circular(10), // Curved edges
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center, // Center the texts vertically
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              'assets/icon-3.png', // Path to your image
                              width: 30, // Adjust the width of the image
                              height: 25, // Adjust the height of the image
                            ),
                            Spacer(),
                            Text(
                              'Goal   7,000,000 QAR',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Sans Serif',
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              ),
                            ),
                            Text(
                              'Raised 6,112,811QAR',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Sans Serif',
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      )
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
