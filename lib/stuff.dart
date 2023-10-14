import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              transform: GradientRotation(20),
              colors: [Colors.purple, Colors.blue])),
      child: const Column(
        children: [
          Center(
            heightFactor: 200,
            child: CircleAvatar(
              backgroundColor: Colors.blue,
              maxRadius: 50,
              child: Icon(
                Icons.offline_bolt,
                color: Colors.purple,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
