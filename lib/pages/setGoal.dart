import 'package:flutter/material.dart';
import 'package:hackathon_app/helpers/colors.dart';
import 'package:hackathon_app/helpers/dimension.dart';
import 'package:hackathon_app/helpers/text.dart';
import 'package:dio/dio.dart';

final dio = Dio();

Future<List<String>> getHttp() async {
  var response = await dio.get('http://localhost:3000/user/choices');
  List<String> topics = [];
  response.data.forEach((topic) => topics.add(topic['topic']));
  return topics;
}

class SetGoals extends StatefulWidget {
  const SetGoals({super.key});

  @override
  State<SetGoals> createState() => _SetGoalsState();
}

class _SetGoalsState extends State<SetGoals> {
  Future<List<String>>? futureTopics;

  @override
  void initState() {
    super.initState();
    futureTopics = getHttp();
  }

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
                border: const OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: themeColor),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            const Text(
              "Or choose one from below",
              style: TextStyle(fontSize: 22),
            ),
            const SizedBox(
              height: 20,
            ),
            FutureBuilder<List<String>>(
              future: futureTopics,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const CircularProgressIndicator();
                } else if (snapshot.hasError) {
                  return Text('Error: ${snapshot.error}');
                } else {
                  // Check if snapshot.data is null before trying to map it
                  if (snapshot.data != null) {
                    return Wrap(
                      spacing: 10,
                      children: snapshot.data!
                          .map((topic) => GestureDetector(
                                child: Chip(
                                  label: Text(
                                    topic,
                                  ),
                                ),
                              ))
                          .toList(),
                    );
                  } else {
                    return const Text('No data');
                  }
                }
              },
            ),
            const SizedBox(height: 40),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  getHttp();
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(themeColor),
                ),
                child: const Text("Proceed"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
