import 'dart:math';
import 'package:flutter/material.dart';

class ConcertSection extends StatefulWidget {
  const ConcertSection({super.key});

  @override
  State<ConcertSection> createState() => _ConcertSectionState();
}

class _ConcertSectionState extends State<ConcertSection>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    // Initialize the animation controller for continuous animation
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2), // 2 seconds for a complete cycle
    )..repeat(); // Repeat the animation infinitely
  }

  @override
  void dispose() {
    // Dispose of the animation controller to free resources
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        // Apply a gradient background with a concert theme
        gradient: LinearGradient(
          colors: [
            Colors.deepPurple.shade800, // Dark purple for a dramatic effect
            Colors.black, // Black for a concert ambiance
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(16), // Rounded corners
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Section title
          const Text(
            "Music Concert",
            style: TextStyle(
              fontSize: 28, // Large font size for emphasis
              fontWeight: FontWeight.bold, // Bold to make the title stand out
              color: Colors.white, // White text for contrast
            ),
          ),
          const SizedBox(height: 8), // Space between title and description
          // Section description
          const Text(
            "Experience the thrill of live music with our premium concerts. Discover what we offer and join the rhythm.",
            style: TextStyle(
                fontSize: 16, color: Colors.white70), // Subtle text color
          ),
          const SizedBox(height: 24), // Space before the visualizer
          // Centered container for the music visualizer
          Center(
            child: SizedBox(
              height: 200, // Height of the visualizer
              child: AnimatedBuilder(
                animation: _controller,
                builder: (context, child) {
                  return CustomPaint(
                    // Custom painter for drawing the visualizer
                    painter: _EqualizerPainter(_controller.value),
                    child: Container(),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Custom painter for the music visualizer effect
class _EqualizerPainter extends CustomPainter {
  final double animationValue; // Animation value to create dynamic effects

  _EqualizerPainter(this.animationValue);

  @override
  void paint(Canvas canvas, Size size) {
    final barWidth = size.width / 20; // Divide the width into 20 bars
    final paint = Paint()
      ..color = Colors.deepPurpleAccent // Default color for bars
      ..style = PaintingStyle.fill; // Fill the bars

    for (int i = 0; i < 20; i++) {
      // Calculate the dynamic height of each bar using sine wave
      double barHeight = size.height /
          2 *
          (0.5 + 0.5 * sin(animationValue * 2 * pi + i * pi / 10));
      double x = i * barWidth; // Position of each bar

      // Draw each bar with varying colors
      canvas.drawRect(
        Rect.fromLTWH(x, size.height - barHeight, barWidth - 4, barHeight),
        paint..color = Colors.primaries[i % Colors.primaries.length],
      );
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true; // Repaint whenever the animation value changes
  }
}

void main() {
  runApp(const MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.black, // Black background for the concert theme
      body: SafeArea(
        child: ConcertSection(),
      ),
    ),
  ));
}
