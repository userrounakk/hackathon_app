import 'package:flutter/material.dart';
import 'package:hackathon_app/api/api.dart';
import 'package:hackathon_app/helpers/colors.dart';
import 'package:hackathon_app/helpers/dimension.dart';
import 'package:hackathon_app/helpers/images.dart';
import 'package:hackathon_app/helpers/text.dart';
import 'package:hackathon_app/pages/setGoal.dart';
import 'register.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

String errorMessage = '';
bool isLoginFailed = false;

class _LoginState extends State<Login> {
  void login() async {
    var response = await Api.login(
      email: emailController.text,
      password: passwordController.text,
    );

    if (response.toString() == "User Not Found") {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Login Failed'),
            content: Text('Incorrect email or password'),
            actions: <Widget>[
              TextButton(
                child: const Text('Close'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const SetGoals()),
      );
    }
  }

  bool visibility = false;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
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
                height: 40,
              ),
              SizedBox(
                child: Center(child: Image.asset(Images.logo)),
              ),
              const SizedBox(
                height: 60,
              ),
              Center(
                child: Text(
                  "Login to your account",
                  style: headingStyle(),
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
              // Login Button
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
                      login();
                    }
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
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Register()),
                      );
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
      ),
    );
  }
}
