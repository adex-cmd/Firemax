import 'dart:async';

import 'package:firemax/process/screen.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  late Timer _timer;

  @override
  void initState() {
    _timer = Timer(const Duration(seconds: 10), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) {
        return const Screen();
      }));
    });
    super.initState();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            const SizedBox(
              height: 200,
            ),
            Container(
              width: double.infinity,
              height: 300,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                      'assets/image/R.png'), // Replace 'your_image.png' with the actual image path.
                  fit: BoxFit
                      .cover, // You can adjust the fit property as needed.
                ),
              ),
            ),
            const SizedBox(
              height: 200,
            ),
            const Text(
              "We have sent varifying you please wait.....",
              style: TextStyle(fontSize: 30, color: Colors.amber),
            ), // Add other widgets or components below the image Container.
          ],
        ),
      ),
    );
  }
}
