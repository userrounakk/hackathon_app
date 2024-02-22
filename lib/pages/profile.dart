import 'package:flutter/material.dart';
import 'package:hackathon_app/helpers/dimension.dart';
import 'package:hackathon_app/helpers/text.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Padding(
      padding: EdgeInsets.only(top: getSafeArea(context), left: 20, right: 20),
      child: Column(
        children: [
          const SizedBox(height: 40),
          Row(
            children: [
              IconButton(
                onPressed: () => Navigator.pop(context),
                icon: const Icon(Icons.arrow_back_ios),
              ),
              Text(
                "Profile",
                style: headingStyle(),
              ),
            ],
          ),
          const SizedBox(height: 40),
          const SizedBox(
            width: double.infinity,
            child: CircleAvatar(
              radius: 100,
              backgroundImage: NetworkImage("https://picsum.photos/200"),
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            "John Doe",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          const Chip(
            label: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Text("@john_doe"),
            ),
          ),
          const SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFF2B3C7C),
                  border: Border.all(color: Colors.white),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      Text(
                        "1024 xp",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text("Points", style: TextStyle(fontSize: 18))
                    ],
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFF2B3C7C),
                  border: Border.all(color: Colors.white),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      Text(
                        "1024 xp",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text("Points", style: TextStyle(fontSize: 18))
                    ],
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xFF2B3C7C),
                  border: Border.all(color: Colors.white),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      Text(
                        "1024 xp",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text("Points", style: TextStyle(fontSize: 18))
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          const ListTile(
            leading: Icon(
              Icons.person,
              size: 24,
            ),
            title: Text(
              "Edit Profile",
              style: TextStyle(fontSize: 24),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const ListTile(
            leading: Icon(
              Icons.verified,
              size: 24,
            ),
            title: Text(
              "My Badges",
              style: TextStyle(fontSize: 24),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const ListTile(
            leading: Icon(
              Icons.logout,
              size: 24,
            ),
            title: Text(
              "Log Out",
              style: TextStyle(fontSize: 24),
            ),
          ),
        ],
      ),
    )));
  }
}
