import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:hackathon_app/pages/auth/login.dart';
import 'package:hackathon_app/pages/auth/register.dart';
import 'package:hackathon_app/pages/dashboard.dart';
import 'package:hackathon_app/pages/leaderboard.dart';
import 'package:hackathon_app/pages/profile.dart';
import 'package:hackathon_app/pages/setGoal.dart';
// import 'package:hackathon_app/pages/dashboard.dart';

void main() => runApp(const MainApp());

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Hackathon Project",
      home: const Login(),
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
    );
  }
}
