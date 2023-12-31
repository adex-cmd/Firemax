import 'package:firebase_core/firebase_core.dart';
import 'package:firemax/Themes/dark_mode.dart';
import 'package:firemax/Themes/light_mode.dart';
import 'package:firemax/auth/login_or_register.dart';
import 'package:firemax/firebase_options.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LoginOrRegister(),
      theme: lightMode,
      darkTheme: darkMode,
    );
  }
}
