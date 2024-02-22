import 'package:flutter/material.dart';
import 'package:hackathon_app/helpers/colors.dart';
import 'package:hackathon_app/helpers/dimension.dart';
import 'package:hackathon_app/helpers/text.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool visibility = false;
  bool confirmPasswordVisibility = false;
  final nameController = TextEditingController();
  final usernameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:
            EdgeInsets.only(top: getSafeArea(context), left: 20, right: 20),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 60,
              ),
              Text(
                "Create an account",
                style: headingStyle(),
              ),

              const SizedBox(
                height: 40,
              ),

              // Name
              TextFormField(
                controller: nameController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your name';
                  }
                  return null;
                },
                decoration: InputDecoration(
                  labelText: "Name",
                  border: const OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: themeColor),
                  ),
                ),
              ),

              const SizedBox(
                height: 40,
              ),

              // Username
              TextFormField(
                controller: usernameController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your username';
                  }
                  return null;
                },
                decoration: InputDecoration(
                  labelText: "Username",
                  border: const OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: themeColor),
                  ),
                ),
              ),

              const SizedBox(
                height: 40,
              ),

              // Email
              TextFormField(
                controller: emailController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your email';
                  }
                  // check for a valid email
                  if (!value.contains('@')) {
                    return 'Please enter a valid email';
                  }
                  return null;
                },
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
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your password';
                  }
                  return null;
                },
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

              // Confirm Password
              TextFormField(
                controller: confirmPasswordController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please confirm your password';
                  }
                  if (value != passwordController.text) {
                    return 'Passwords do not match';
                  }
                  return null;
                },
                obscureText: !confirmPasswordVisibility,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        confirmPasswordVisibility = !confirmPasswordVisibility;
                      });
                    },
                    icon: Icon(
                      confirmPasswordVisibility
                          ? Icons.visibility_off
                          : Icons.visibility,
                      color: themeColor,
                    ),
                  ),
                  labelText: "Confirm Password",
                  border: const OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: themeColor),
                  ),
                ),
              ),

              const SizedBox(
                height: 40,
              ),

              // Register Button
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(themeColor),
                  ),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      print(emailController.text);
                      print(passwordController.text);
                    }
                  },
                  child: const Text("Register"),
                ),
              ),

              const SizedBox(
                height: 40,
              ),

              // Login
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account? ", style: normal()),
                  GestureDetector(
                    onTap: () {
                      print("Login");
                    },
                    child: Text(
                      "Login",
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
      ),
    );
  }
}
