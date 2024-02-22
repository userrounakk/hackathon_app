import 'package:flutter/material.dart';
import 'package:hackathon_app/helpers/colors.dart';
import 'package:hackathon_app/helpers/dimension.dart';
import 'package:hackathon_app/helpers/text.dart';

class SetGoals extends StatefulWidget {
  const SetGoals({super.key});

  @override
  State<SetGoals> createState() => _SetGoalsState();
}

class _SetGoalsState extends State<SetGoals> {
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
            Text("Set your goal", style: headingStyle()),
            const SizedBox(
              height: 40,
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: "Enter your goal",
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: themeColor),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Text(
              "Or choose one from below",
              style: TextStyle(fontSize: 22),
            ),
            const SizedBox(
              height: 20,
            ),
            Wrap(
              spacing: 10,
              children: [
                const Chip(
                  label: Text("Lose weight"),
                ),
                const Chip(
                  label: Text("Gain weight"),
                ),
                const Chip(
                  label: Text("Stay fit"),
                ),
                const Chip(
                  label: Text("Lose weight"),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text("Proceed"),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(themeColor),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
