import 'package:flutter/material.dart';
import 'package:hackathon_app/helpers/colors.dart';
import 'package:hackathon_app/helpers/dimension.dart';
import 'package:hackathon_app/helpers/text.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        width: MediaQuery.of(context).size.width * .85,
        height: 60,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            gradient: const LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color(0xFF946FFF),
                Color(0xFF3760F9),
              ],
            )),
        child: MaterialButton(
          onPressed: () {},
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Continue where you left off ',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              Icon(Icons.arrow_right_alt_outlined, size: 40)
            ],
          ),
        ),
      ),
      body: Center(
        child: Scaffold(
          body: Padding(
            padding:
                EdgeInsets.only(top: getSafeArea(context), left: 20, right: 20),
            child: Column(
              children: [
                const SizedBox(height: 40),
                Row(
                  children: [
                    Text(
                      "Welcome, John",
                      style: headingStyle(),
                    ),
                    const Spacer(),
                    const CircleAvatar(
                      radius: 30,
                      backgroundImage:
                          NetworkImage("https://picsum.photos/200"),
                    ),
                  ],
                ),
                const SizedBox(height: 40),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color.fromARGB(2, 245, 184, 184),
                    border: Border.all(
                      color: Colors.white,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(
                              "Remaining course days",
                              style: normal(),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              "10 Days",
                              style: TextStyle(
                                  color: themeColor,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 10),
                            Chip(
                              label: Text("Today's Goal"),
                              backgroundColor: themeColor,
                            ),
                          ],
                        ),
                        Stack(
                          children: [
                            CircularStepProgressIndicator(
                              totalSteps: 100,
                              currentStep: 66,
                              stepSize: 1,
                              selectedColor: themeColor,
                              unselectedColor: Colors.grey[200],
                              padding: 0,
                              width: 120,
                              height: 120,
                              selectedStepSize: 6,
                              roundedCap: (_, __) => true,
                            ),
                            const SizedBox(
                              height: 120,
                              width: 120,
                              child: Center(
                                  child: Text(
                                '66%\n Complete',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              )),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: getScreenWidth(context) * .4,
                            height: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Color.fromARGB(2, 245, 184, 184),
                              border: Border.all(
                                color: Colors.white,
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.leaderboard,
                                  size: 80,
                                  color: themeColor,
                                ),
                                const SizedBox(height: 10),
                                const Text(
                                  "Leaderboard",
                                  style: TextStyle(fontSize: 20),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Container(
                            width: getScreenWidth(context) * .4,
                            height: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Color.fromARGB(2, 245, 184, 184),
                              border: Border.all(
                                color: Colors.white,
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.map_outlined,
                                  size: 80,
                                  color: themeColor,
                                ),
                                const SizedBox(height: 10),
                                const Text(
                                  "Road Map",
                                  style: TextStyle(fontSize: 20),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: getScreenWidth(context) * .4,
                            height: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Color.fromARGB(2, 245, 184, 184),
                              border: Border.all(
                                color: Colors.white,
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.check_circle_outline_rounded,
                                  size: 80,
                                  color: themeColor,
                                ),
                                const SizedBox(height: 10),
                                const Text(
                                  "Your Score",
                                  style: TextStyle(fontSize: 20),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Container(
                            width: getScreenWidth(context) * .4,
                            height: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Color.fromARGB(2, 245, 184, 184),
                              border: Border.all(
                                color: Colors.white,
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.history,
                                  size: 80,
                                  color: themeColor,
                                ),
                                const SizedBox(height: 10),
                                const Text(
                                  "Scoreboard",
                                  style: TextStyle(fontSize: 20),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
