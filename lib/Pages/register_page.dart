// ignore_for_file: use_build_context_synchronously

import 'package:firemax/components/myButtons.dart';
import 'package:firemax/components/my_textField.dart';
import 'package:firemax/helper/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;
  RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController userNameController = TextEditingController();

  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  final TextEditingController confirmpasswordController =
      TextEditingController();

  Future<void> registerUser() async {
    showDialog(
        context: context,
        builder: (context) => const Center(
              child: CircularProgressIndicator(),
            ));
    if (passwordController.text != confirmpasswordController.text) {
      Navigator.pop(context);

      displayMessageToUser("Password don't match", context);
    }
    try {
      UserCredential? userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
              email: emailController.text, password: passwordController.text);
      Navigator.pop(context);
    } on FirebaseAuthException catch (e) {
      Navigator.pop(context);
      displayMessageToUser(e.code, context);
    }

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.person,
              size: 90,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
            const SizedBox(
              height: 25,
            ),
            const Text(
              "T E C H B O Y",
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: MyTextField(
                  hintText: "User Name",
                  obscureText: false,
                  controller: userNameController),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: MyTextField(
                  hintText: "Email",
                  obscureText: false,
                  controller: emailController),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: MyTextField(
                  hintText: "Password",
                  obscureText: true,
                  controller: passwordController),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: MyTextField(
                  hintText: "Confirm your Password",
                  obscureText: true,
                  controller: confirmpasswordController),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Forgot Password",
                  style:
                      TextStyle(color: Theme.of(context).colorScheme.secondary),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: MyButtons(
                onTap: registerUser,
                text: "Register",
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Already have an Account "),
                GestureDetector(
                  onTap: widget.onTap,
                  child: const Text(
                    "Login here",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            )
          ],
        )),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.person,
            size: 90,
            color: Theme.of(context).colorScheme.inversePrimary,
          ),
          const SizedBox(
            height: 25,
          ),
          const Text(
            "T E C H B O Y",
            style: TextStyle(fontSize: 20),
          ),
          const SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: MyTextField(
                hintText: "User Name",
                obscureText: false,
                controller: userNameController),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: MyTextField(
                hintText: "Email",
                obscureText: false,
                controller: emailController),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: MyTextField(
                hintText: "Password",
                obscureText: true,
                controller: passwordController),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: MyTextField(
                hintText: "Confirm your Password",
                obscureText: true,
                controller: confirmpasswordController),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "Forgot Password",
                style:
                    TextStyle(color: Theme.of(context).colorScheme.secondary),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: MyButtons(
              onTap: registerUser,
              text: "Register",
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Already have an Account "),
              GestureDetector(
                onTap: widget.onTap,
                child: const Text(
                  "Login here",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          )
        ],
      )),
    );
  }
}
