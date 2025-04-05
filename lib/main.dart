import 'package:flutter/material.dart';
import 'package:accessibility_tools/accessibility_tools.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // builder: (context, child) => AccessibilityTools(child: child),
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
                SizedBox(height: 20), // Add some space between the image and the text
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0), // Align with buttons
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start, // Align text to the left
                    children: [
                      Text(
                        'General Sadaqa',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'InriaSans', // Ensure this font is added in pubspec.yaml
                        ),
                      ),
                      SizedBox(height: 5), // Add some space between the title and the LCN
                      Text(
                        'LCN:PFL/QCCR2024/3',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                          fontFamily: 'InriaSans', // Ensure this font is added in pubspec.yaml
                        ),
                      ),
                      SizedBox(height: 20), // Add some space between the LCN and the paragraph
                      Text(
                        'Sadaqa is a great form of goodness, as it purifies souls & proves true faith. Sadaqa brings blessing to your money & wins you better reward from God, by meeting the needs of poor people & putting a smile on their faces. Your Sadaqa will be used for 5 purposes: Relief of refugees & displaced people, education projects, subsidies for families & orphans, water & sanitation projects & construction & operation of hospitals.',
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'InriaSans', // Ensure this font is added in pubspec.yaml
                          height: 1.5, // Line height (19.5 / 13 = ~1.5)
                          letterSpacing: 0.0015, // Letter spacing (0.15%)
                        ),
                        textAlign: TextAlign.left, // Align text to the right
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20), // Add some space between the text and the buttons
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0), // Align buttons with text
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
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
                ),
                SizedBox(height: 20), // Add some space between the rows
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0), // Align container with text
                  child: Container(
                    width: double.infinity, // Make it take the full width of the parent
                    height: 87, // Set the height of the box
                    decoration: BoxDecoration(
                      color: Color(0xFFA03123), // Custom red shade
                      borderRadius: BorderRadius.circular(12), // Make the edges rounded
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 2, // Left half (slightly smaller space)
                          child: SizedBox(),
                        ),
                        Expanded(
                          flex: 3, // Right half (slightly larger space)
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10.0, right: 20.0, top: 8.0, bottom: 8.0),
                            child: Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: "Fundraising progress:\n", // First line
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text: "87.33% of the goal reached\n", // Second line
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text: "12.67% Remaining", // Third line
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.left, // Align text to the left
                              maxLines: 3, // Ensure it fits in 3 lines
                              overflow: TextOverflow.ellipsis, // Handle overflow gracefully
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20), // Add some space between the rows
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0), // Align buttons with text
                  child: Column(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 50,
                        color: Colors.purple,
                      ),
                      SizedBox(height: 20), // Add some space between the buttons
                      Container(
                        width: double.infinity,
                        height: 50,
                        color: Colors.purple,
                      ),
                    ],
                  ),
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