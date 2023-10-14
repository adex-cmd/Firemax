import 'package:firemax/setup/signin.dart';
import 'package:firemax/step/button.dart';
import 'package:firemax/step/inp.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Form(
                  child: Column(children: [
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 100),
                      child: Text(
                        "Sign in",
                        style: TextStyle(fontSize: 40),
                      ),
                    ),
                    SizedBox(
                        width: 350,
                        child: Inp(
                          labelText: 'Email Address',
                          radius: 50,
                        )),
                    SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                        width: 350,
                        child: Inp(
                          labelText: 'Password',
                          radius: 50,
                        )),
                    SizedBox(
                      height: 50,
                    ),
                    Text(
                      "Forgot Password?",
                      style: TextStyle(
                        fontStyle: FontStyle.normal,
                        color: Colors.blueAccent,
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.right,
                    )
                  ]),
                ),
                const SizedBox(
                  height: 50,
                ),
                const Button(
                  text: "Sign-In",
                  wid: 350,
                  hei: 50,
                ),
                const SizedBox(
                  height: 50,
                ),
                TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: ((context) => const FireMax())));
                    },
                    child: const Text(
                      "Create an account",
                      style: TextStyle(fontSize: 20),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
