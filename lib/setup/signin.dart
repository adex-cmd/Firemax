import 'package:firemax/process/second_screen.dart';
import 'package:firemax/setup/login.dart';
import 'package:firemax/step/inp.dart';
import 'package:flutter/material.dart';

class FireMax extends StatelessWidget {
  const FireMax({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Center(
                  child: Form(
                    child: Column(children: [
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 100),
                        child: Text(
                          "Register",
                          style: TextStyle(fontSize: 50),
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
                ),
                const SizedBox(
                  height: 50,
                ),
                SizedBox(
                  width: 300,
                  child: ElevatedButton(
                    onPressed: () {
                      print("object");
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => const SecondScreen())));
                    },
                    style: const ButtonStyle(
                        shape: MaterialStatePropertyAll(
                            ContinuousRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(50)))),
                        elevation: MaterialStatePropertyAll(10),
                        backgroundColor: MaterialStatePropertyAll(Colors.pink)),
                    child: const Text("Sign-up"),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => const Login())));
                    },
                    child: const Text(
                      "Already have an Account",
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
