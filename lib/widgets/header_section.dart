import 'package:flutter/material.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Background Image
        Container(
          height: 500,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                  'images/bg2.png'), // Ensure the correct path to your image
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}
