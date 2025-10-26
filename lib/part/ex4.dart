import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String title;
  final Color? color;
  final List<Color>? gradientColors;

  const CustomCard({
    super.key,
    required this.title,
    this.color,
    this.gradientColors,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20.0),
      decoration: BoxDecoration(
        color: gradientColors == null ? color : null,
        gradient: gradientColors != null
            ? LinearGradient(colors: gradientColors!)
            : null,
        borderRadius: BorderRadius.circular(20),
      ),
      padding: const EdgeInsets.all(20),
      child: Center(
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

class Ex4 extends StatelessWidget {
  const Ex4({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(50),
        margin: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            children: const [
              CustomCard(
                title: "OOP",
                color: Color(0xFF90CAF9), // same as Colors.blue[100]
              ),
              CustomCard(
                title: "Dart",
                color: Color(0xFF64B5F6), // same as Colors.blue[300]
              ),
              CustomCard(
                title: "Flutter",
                gradientColors: [Color(0xFF64B5F6), Color(0xFF1E88E5)],
              ),
            ],
          ),
        ),
      );
  }
}
