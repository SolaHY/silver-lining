import 'package:flutter/material.dart';
import '../widgets/header_section.dart';
import '../widgets/about_section.dart';
import '../widgets/concert_section.dart';
import '../widgets/pilates_section.dart';
import '../widgets/footer_section.dart';

void main() {
  runApp(const PortfolioApp());
}

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Portfolio',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        primaryColor: Colors.indigo[700],
        scaffoldBackgroundColor: Colors.black, // Dark background
        textTheme: const TextTheme(
          displayLarge: TextStyle(
              fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white),
          displayMedium: TextStyle(
              fontSize: 28, fontWeight: FontWeight.bold, color: Colors.white),
          displaySmall: TextStyle(
              fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
          bodyMedium: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.normal,
              color: Colors.white70),
        ),
      ),
      home: const PortfolioScreen(),
    );
  }
}

class PortfolioScreen extends StatelessWidget {
  const PortfolioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 80.0), //  side margins
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header Section
              HeaderSection(),
              SizedBox(height: 16),
              // Profile Section
              AboutSection(),
              SizedBox(height: 16),
              // Profile Section
              ConcertSection(),
              SizedBox(height: 16),
              // Experience Section
              PilatesSection(),
              SizedBox(height: 16),
              // Footer Section
              FooterSection(),
              SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
