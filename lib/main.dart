// filepath: /Users/alanoudalkhulaifi/Downloads/QRCS-App/prototype_app/lib/main.dart
import 'package:flutter/material.dart';
import 'package:accessibility_tools/accessibility_tools.dart';
import 'package:flutter/semantics.dart';

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
  final TextEditingController _controller = TextEditingController();


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
                      decoration: BoxDecoration(
                        color: Colors.purple, // Adjust color to match your design
                        borderRadius: BorderRadius.circular(8),
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text(
                              "Donation Amount [Default: 50 QAR]",
                              style: TextStyle(
                                fontFamily: 'Intersans',
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                height: 1.5,
                                letterSpacing: 0.12 * 12,
                                wordSpacing: 0.16 * 12,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          const SizedBox(width: 10),
                          Semantics(
                            label: 'Donation Amount input field. Default is 50 QAR. Enter desired amount in QAR.',
                            textField: true,
                            child: Container(
                              width: 150,
                              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.white),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: TextField(
                                keyboardType: TextInputType.number,
                                style: TextStyle(color: Colors.white70, fontSize: 19),
                                textAlign: TextAlign.center,
                                textAlignVertical: TextAlignVertical.center,
                                maxLines: 2,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Input Desired Amount QAR",
                                  hintStyle: TextStyle(
                                    color: Colors.white70,
                                    fontSize: 13,
                                    height: 1.5,
                                    letterSpacing: 0.12 * 13,
                                    wordSpacing: 0.16 * 13,
                                  ),
                                  contentPadding: EdgeInsets.symmetric(vertical: 4, horizontal: 5),
                                ),
                                onChanged: (value) {
                                  // Validate the input
                                  String semanticLabel = "Default label"; // Initialize with a default value
                                  if (value.isEmpty) {
                                    semanticLabel = "Input is required.";
                                  } else if (double.tryParse(value) == null) {
                                    semanticLabel = "Invalid input. Please enter a number.";
                                  } else {
                                    double amount = double.parse(value);
                                    if (amount <= 0) {
                                      semanticLabel = "Minimum donation amount is 1 QAR.";
                                    } else {
                                      semanticLabel = "You have entered $value QAR.";
                                    }
                                  }
                                  // Update the semantic label dynamically
                                  SemanticsService.announce(semanticLabel, TextDirection.ltr);
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20), // Add some space between the buttons
                    GestureDetector(
                      onTap: () {
                        // Add to cart logic here
                      },
                      child: Semantics(
                        label: 'Add to cart',
                        button: true,
                        child: Container(
                          width: 340,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.purple,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Add to Cart",
                                style: TextStyle(
                                  fontFamily: 'Intersans',
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  height: 1.5,
                                  letterSpacing: 1.92,
                                  wordSpacing: 2.56,
                                ),
                              ),
                              SizedBox(width: 80),
                              Icon(
                                Icons.shopping_cart,
                                color: Colors.white,
                                size: 26,
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
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