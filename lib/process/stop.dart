import 'package:flutter/material.dart';

class Display extends StatefulWidget {
  final String inppues;
  final String assetName;

  const Display({Key? key, required this.inppues, required this.assetName}) : super(key: key);

  @override
  State<Display> createState() => _DisplayState();
}

class _DisplayState extends State<Display> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 600,
      child: Column(
        children: [
          Center(
            child: Container(
              width: 400,
              height: 400,
              decoration:  BoxDecoration(
                image: DecorationImage(image: AssetImage(widget.assetName)),
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
            ),
          ),
          Text(widget.inppues, style: TextStyle(fontFamily: 'poppins',decoration: TextDecoration.underline),), // Use widget.inppues to access the input property.
        ],
      ),
    );
  }
}
