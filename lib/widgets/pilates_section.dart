import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class PilatesSection extends StatelessWidget {
  const PilatesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      // Apply a soft gradient background to enhance aesthetics
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.pink.shade100, // Light pink color for the top-left
            Colors.white, // White color for the bottom-right
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(16), // Rounded corners
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Title for the Pilates section
          const Text(
            "Pilates",
            style: TextStyle(
              fontSize: 28, // Large font size for emphasis
              fontWeight: FontWeight.bold, // Bold to stand out
              color: Colors.black87, // Dark text for contrast
            ),
          ),
          const SizedBox(height: 8), // Spacing between title and description
          // Brief description about Pilates
          const Text(
            "Discover the art of mindful movement through our Pilates classes.",
            style: TextStyle(
                fontSize: 16,
                color: Colors.black54), // Subtle color and smaller font
          ),
          const SizedBox(height: 24), // Spacing before animations
          // Row to display two animations side by side
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // First animation (e.g., a Pilates pose animation)
              SizedBox(
                height: 200, // Set consistent height for animations
                child: Lottie.asset(
                  'animations/pilates_animation.json', // Replace with your Lottie animation file
                  fit: BoxFit.contain, // Ensures the animation scales properly
                ),
              ),
              // Second animation (e.g., a Pilates bridge exercise animation)
              SizedBox(
                height: 200, // Set consistent height for animations
                child: Lottie.asset(
                  'animations/pilates_bridge.json', // Replace with your Lottie animation file
                  fit: BoxFit.contain, // Ensures the animation scales properly
                ),
              ),
            ],
          ),
          const SizedBox(height: 24), // Spacing before cards
          // Cards explaining Pilates class details
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // Beginner class card
              Expanded(
                child: Card(
                  elevation: 4,
                  color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Text(
                          "Beginner",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          "Duration:50mins",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 14, color: Colors.black54),
                        ),
                        SizedBox(height: 8),
                        Text(
                          "Learn the basics of Pilates with simple and effective exercises.",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 14, color: Colors.black54),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(width: 16), // Spacing between cards
              // Intermediate class card
              Expanded(
                child: Card(
                  elevation: 4,
                  color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Text(
                          "Intermediate",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          "Duration:50mins",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 14, color: Colors.black54),
                        ),
                        SizedBox(height: 8),
                        Text(
                          "Challenge yourself with more dynamic movements.",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 14, color: Colors.black54),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(width: 16), // Spacing between cards
            ],
          ),
          const SizedBox(height: 32), // Spacing before button
          // Contact us button
          Center(
            child: ElevatedButton(
              onPressed: () {
                // Define the booking action here
                print('Book a Pilates lesson');
              },
              style: ElevatedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                backgroundColor: Colors.pinkAccent, // Button color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30), // Rounded corners
                ),
              ),
              child: const Text(
                'Contact Us',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: PilatesSection(),
      ),
    ),
  ));
}
