import 'package:flutter/material.dart';
import 'package:hackathon_app/helpers/colors.dart';
import 'package:hackathon_app/helpers/dimension.dart';
import 'package:hackathon_app/helpers/images.dart';
import 'package:hackathon_app/helpers/text.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool visibility = false;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:
            EdgeInsets.only(top: getSafeArea(context), left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 40,
            ),
            SizedBox(
              child: Center(child: Image.asset(Images.logo)),
            ),
            const SizedBox(
              height: 60,
            ),
            Text(
              "Login to your account",
              style: headingStyle(),
            ),

            const SizedBox(
              height: 40,
            ),

            // Email
            TextFormField(
              controller: emailController,
              decoration: InputDecoration(
                labelText: "Email",
                border: const OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: themeColor),
                ),
              ),
            ),

            const SizedBox(
              height: 40,
            ),

            // Password
            TextFormField(
              controller: passwordController,
              obscureText: !visibility,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      visibility = !visibility;
                    });
                  },
                  icon: Icon(
                    visibility ? Icons.visibility_off : Icons.visibility,
                    color: themeColor,
                  ),
                ),
                labelText: "Password",
                border: const OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: themeColor),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            // Login Button
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(themeColor),
                ),
                onPressed: () {
                  print(emailController.text);
                  print(passwordController.text);
                },
                child: const Text("Login"),
              ),
            ),

            const SizedBox(
              height: 40,
            ),

            // Register
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account? ", style: normal()),
                GestureDetector(
                  onTap: () {
                    print("Register");
                  },
                  child: Text(
                    "Register",
                    style: TextStyle(
                      fontSize: 18,
                      color: themeColor,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
