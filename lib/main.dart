import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

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
                      Semantics(
                        label: 'General Sadaqa',
                        child: Text(
                          'General Sadaqa',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'InriaSans', // Ensure this font is added in pubspec.yaml
                          ),
                        ),
                      ),
                      SizedBox(height: 5), // Add some space between the title and the LCN
                      Semantics(
                        label:
                            'LCN:PFL/QCCR2024/3. Sadaqa is a great form of goodness, as it purifies souls and proves true faith. Sadaqa brings blessing to your money and wins you better reward from God, by meeting the needs of poor people and putting a smile on their faces. Your Sadaqa will be used for 5 purposes: Relief of refugees and displaced people, education projects, subsidies for families and orphans, water and sanitation projects, and construction and operation of hospitals.',
                        child: Text(
                          'LCN:PFL/QCCR2024/3',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                            fontFamily: 'InriaSans', // Ensure this font is added in pubspec.yaml
                          ),
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
                        textAlign: TextAlign.left, // Align text to the left
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
                Semantics(
                  label:
                      'Fundraising progress is 87.33% of the goal reached and 12.67% remaining',
                  button: true,
                  child: GestureDetector(
                    onTap: () {
                      // Add your button functionality here
                    },
                    child: Padding(
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
                            // Donut chart with updated layout
                            Padding(
                              padding: const EdgeInsets.only(left: 20.0, right: 0.0, top: 4.0, bottom: 0.0),
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  CircularPercentIndicator(
                                    radius: 40.0, // Adjust the size of the donut chart
                                    lineWidth: 10.0,
                                    percent: 0.8733, // 87.33% of the goal reached
                                    center: SizedBox(), // Leave the center empty
                                    progressColor: Colors.green,
                                    backgroundColor: const Color.fromARGB(255, 173, 195, 167),
                                    circularStrokeCap: CircularStrokeCap.round,
                                  ),
                                  Positioned(
                                    top: 0, // Position the text on top of the grey area
                                    right: -4,
                                    child: Container(
                                      padding: EdgeInsets.symmetric(horizontal: 2.5, vertical: 0.5),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(6),
                                      ),
                                      child: Text(
                                        "12.67%",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14.0,
                                          color: const Color.fromARGB(255, 0, 0, 0),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: 40, // Position the text to the right of the chart
                                    right: 22,
                                    child: Container(
                                      padding: EdgeInsets.symmetric(horizontal: 2.5, vertical: 0.5),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(6),
                                      ),
                                      child: Text(
                                        "87.33%",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14.0,
                                          color: const Color.fromARGB(255, 0, 0, 0),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 8.0, bottom: 8.0),
                                child: Text.rich(
                                  TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "Fundraising progress:\n", // First line
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontFamily: 'InriaSans',
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      TextSpan(
                                        text: "87.33% of the goal reached\n", // Second line
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontFamily: 'InriaSans',
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      TextSpan(
                                        text: "12.67% Remaining", // Third line
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
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