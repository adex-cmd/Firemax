import 'package:flutter/material.dart';

class Inp extends StatelessWidget {
  final String labelText;
  final Color borderColor;
  final double radius;

  const Inp({
    Key? key,
    required this.labelText,
    this.borderColor = Colors.black,
    required this.radius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: labelText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radius),
          borderSide: BorderSide(color: borderColor),
        ),
      ),
    );
  }
}
