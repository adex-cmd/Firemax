import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;
  final double wid;
  final double hei;
  const Button({
    Key? key,
    required this.text,
    required this.wid,
    required this.hei,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: wid,
        height: hei,
        child: ElevatedButton(
          onPressed: () {
            print("Touched");
          },
          style: const ButtonStyle(
              shape: MaterialStatePropertyAll(ContinuousRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(50)))),
              elevation: MaterialStatePropertyAll(10),
              backgroundColor: MaterialStatePropertyAll(Colors.pink)),
          child: Text(text),
        ));
  }
}
