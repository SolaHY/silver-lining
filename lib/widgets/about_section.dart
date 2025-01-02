import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      // Center the entire section
      child: Container(
        width:
            MediaQuery.of(context).size.width * 0.9, // 90% width of the screen
        padding: const EdgeInsets.all(16), // Padding for internal spacing
        decoration: BoxDecoration(
          // Gradient background for a modern look
          gradient: LinearGradient(
            colors: [Colors.blue.shade100, Colors.white],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(16), // Rounded corners
          boxShadow: const [
            BoxShadow(
              color: Colors.black12, // Light shadow for a subtle effect
              blurRadius: 8,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start, // Align text to the left
          children: [
            // Main heading of the section
            const Text(
              "What We Do",
              style: TextStyle(
                fontSize: 28, // Large font for emphasis
                fontWeight: FontWeight.bold,
                color: Colors.black87, // Dark text for contrast
              ),
            ),
            const SizedBox(height: 8), // Spacing between title and description
            // Brief description of the company's activities
            const Text(
              "We specialize in managing unforgettable music concerts and providing enriching Pilates lessons.",
              style: TextStyle(
                fontSize: 16,
                color: Colors.black54, // Subtle color for secondary text
              ),
            ),
            const SizedBox(height: 24), // Spacing before the cards
            // Cards to describe Music Concerts and Pilates Lessons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Card for Music Concerts
                Expanded(
                  child: Card(
                    elevation: 4,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        // Lottie animation for Music Concert
                        Lottie.asset(
                          'animations/music.json', // Replace with your animation file
                          height: 120, // Height of the animation
                          fit: BoxFit
                              .cover, // Ensures animation scales correctly
                        ),
                        const Padding(
                          padding: EdgeInsets.all(16),
                          child: Text(
                            "Music Concerts",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87,
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          child: Text(
                            "Experience the thrill of live music with our expertly managed events.",
                            textAlign:
                                TextAlign.center, // Center-align the text
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black54,
                            ),
                          ),
                        ),
                        const SizedBox(height: 16), // Bottom padding
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 16), // Space between cards
                // Card for Pilates Lessons
                Expanded(
                  child: Card(
                    elevation: 4,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        // Lottie animation for Pilates
                        Lottie.asset(
                          'animations/pilates_animation.json', // Replace with your animation file
                          height: 120, // Height of the animation
                          fit: BoxFit
                              .cover, // Ensures animation scales correctly
                        ),
                        const Padding(
                          padding: EdgeInsets.all(16),
                          child: Text(
                            "Pilates Lessons",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87,
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          child: Text(
                            "Rejuvenate your body and mind with our tailored Pilates classes.",
                            textAlign:
                                TextAlign.center, // Center-align the text
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black54,
                            ),
                          ),
                        ),
                        const SizedBox(height: 16), // Bottom padding
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: AboutSection(),
      ),
    ),
  ));
}
