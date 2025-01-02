import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Background Image
        Card(
          color: Colors.black, // Set the card background to a dark color
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: const Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Get In Touch",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    )),
                SizedBox(height: 8),
                Text(
                  "Email: akahoshi.thesilverlining@gmail.com",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(width: 16),
                    Icon(FontAwesomeIcons.instagram,
                        color: Colors.white, size: 30),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
