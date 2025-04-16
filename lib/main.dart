import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:accessibility_tools/accessibility_tools.dart';
import 'package:flutter/semantics.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, child) => AccessibilityTools(
        minimumTapAreas: MinimumTapAreas.material, // Set to null to disable tap area checking
        checkSemanticLabels: true, // Check for semantic labels
        checkFontOverflows: true, // Check for flex overflows
        checkImageLabels: true, // Check for image labels
        logLevel: LogLevel.verbose, // Set how much info about issues is printed
        buttonsAlignment: ButtonsAlignment.bottomRight, // Set where the buttons are placed
        enableButtonsDrag: true, // Enable or disable dragging the buttons around
        testingToolsConfiguration: TestingToolsConfiguration( // Customize testing tools configuration
          enabled: true,
          minTextScale: 1.0,
          maxTextScale: 2.0,
        ),
        child: child, // Pass the child widget
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final TextEditingController _controller = TextEditingController(text: "50");

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
                Semantics(
                  label: 'A photo of plants and coins for the General Sadqa project',
                  child: Image.asset('assets/plantCoins.jpg'),
                ),    
                SizedBox(height: 20), // Add some space between the image and the text gap
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
                            fontFamily: 'Sans Serif', // Ensure this font is added in pubspec.yaml
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
                            fontFamily: 'Sans Serif', // Ensure this font is added in pubspec.yaml
                          ),
                        ),
                      ),
                      SizedBox(height: 20), // Add some space between the LCN and the paragraph
                      Text(
                        'Sadaqa is a great form of goodness, as it purifies souls & proves true faith. Sadaqa brings blessing to your money & wins you better reward from God, by meeting the needs of poor people & putting a smile on their faces. Your Sadaqa will be used for 5 purposes: Relief of refugees & displaced people, education projects, subsidies for families & orphans, water & sanitation projects & construction & operation of hospitals.',
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Sans Serif', // Ensure this font is added in pubspec.yaml
                          height: 1.5, // Line height (19.5 / 13 = ~1.5)
                          letterSpacing: 0.0015, // Letter spacing (0.15%)
                        ),
                        textAlign: TextAlign.left, // Align text to the left
                      ),
                    ],
                  ),
                ), 
                SizedBox(height: 20), // Add some space between the text and the buttons // Add some space between the rows
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
                              //alignment: Alignment.center,
                              children: [
                                CircularPercentIndicator(
                                  radius: 40.0,
                                  lineWidth: 10.0,
                                  percent: 0.8733,
                                  center: SizedBox(),
                                  progressColor: Colors.green,
                                  backgroundColor: const Color.fromARGB(255, 173, 195, 167),
                                  circularStrokeCap: CircularStrokeCap.round,
                                ),
                                Positioned(
                                  top: 0,
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
                                  top: 40,
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
                          ], //children
                        ),
                      ),
                    ),
                  ),
                ),   
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Semantics(
                  label: 'This project will be expiring in 784 days',
                  child: Container(
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
                ),
                SizedBox(width: 15), // Add some space between the buttons                    
                Semantics(
                  label: 'This project has 70,000 beneficiaries',
                  child: Container(
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
                ),
                SizedBox(width: 15), // Add some space between the buttons
                Semantics(
                  label: 'This project has a goal of 7,000,000 QAR and has raised 6,112,811 QAR',
                  child: Container(
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
                ),
              ],
            ),
            //SizedBox(height: 20), // Add some space between the image and the text
            SizedBox(height: 20), // Add some space between the row
            Column(
              children: [
                Container(
                  width: 340,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Color(0xFF5C315E), // Adjust color to match your design
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          "Donation Amount Default: 50 QAR",
                          style: TextStyle(
                            fontFamily: 'Sans Serif',
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
                        excludeSemantics: true, // ensures your label overrides the built-in one
                        child: Container(
                          width: 180, // Adjust width as needed
                          height: 52, // Ensure minimum height of 48 pixels
                          padding: EdgeInsets.zero, // Remove extra padding
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Center( // Ensures the TextField is vertically centered
                            child: TextField(
                              controller: _controller,
                              keyboardType: TextInputType.number,
                              style: TextStyle(
                                color: Colors.white70,
                                fontSize: 19,
                                height: 1.5, // Line height set to 1.5x13
                                letterSpacing: 0.12 * 13, // Letter spacing set to 0.12x13
                                wordSpacing: 0.16 * 13, // Word spacing set to 0.16x13
                              ),
                              textAlign: TextAlign.center,
                              textAlignVertical: TextAlignVertical.center,
                              maxLines: 2,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Input Desired Amount QAR", // Keep the hint text for guidance
                                hintStyle: TextStyle(
                                  color: Colors.white70,
                                  fontSize: 13,
                                  height: 1.5, // Line height set to 1.5x13
                                  letterSpacing: 0.12 * 13, // Letter spacing set to 0.12x13
                                  wordSpacing: 0.16 * 13, // Word spacing set to 0.16x13
                                ),
                                contentPadding: EdgeInsets.zero, // Remove default padding
                              ),
                              onChanged: (value) {
                                // Validate the input
                                String semanticLabel = "Input Desired Amount QAR"; // Default label
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
                        color: Color(0xFF5C315E),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Add to Cart",
                            style: TextStyle(
                              fontFamily: 'Sans Serif',
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
          ], //children
        ),
      ),
      Positioned(
        top: 50,
        right: 20,
        child: Row(
          children: [
            // Shopping cart icon
            Semantics(
              label: 'Shopping cart',
              button: true,
              child: Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                  color: Colors.grey, // Grey circular background
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  icon: Icon(Icons.shopping_cart, size: 35, color: Colors.black), // IconButton inside the circle
                  tooltip: 'Shopping cart', // Tooltip for accessibility
                  onPressed: () {
                    // Add shopping cart logic here
                  },
                ),
              ),
            ),
            SizedBox(width: 20), // Add some space between the icons
            // Menu icon
            Semantics(
              label: 'Menu',
              button: true,
              child: Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                  color: Colors.grey, // Grey circular background
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  icon: Icon(Icons.menu, size: 35, color: Colors.black), // IconButton inside the circle
                  tooltip: 'Menu', // Tooltip for accessibility
                  onPressed: () {
                    // Add menu logic here
                  },
                ),
              ),
            ),
          ],
        ),
      ),
            // Back icon
      Positioned(
        top: 50,
        left: 20,
        child: Semantics(
          label: 'Back button',
          button: true,
          child: Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              color: Colors.grey, // Grey circular background
              shape: BoxShape.circle,
            ),
            child: IconButton(
              icon: Icon(Icons.arrow_back, size: 35, color: Colors.black), // IconButton inside the circle
              tooltip: 'Back button', // Tooltip for accessibility
              onPressed: () {
                // Add back button logic here
              },
            ),
          ),
        ),
      ),
    ],
  ),
);
}       
}