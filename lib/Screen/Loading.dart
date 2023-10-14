// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names

import 'dart:async';

import 'package:firemax/setup/login.dart';
import 'package:flutter/material.dart';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  late Timer _timer;

  @override
  void initState() {
    _timer = Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) {
        return const Login();
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
    return Center(
      child: Image.asset('assets/image/R.png'),
    );
  }
}