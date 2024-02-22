import 'package:flutter/material.dart';
import 'package:hackathon_app/helpers/colors.dart';
import 'package:hackathon_app/helpers/dimension.dart';
import 'package:hackathon_app/widgets/leaderboard_ranking.dart';
import 'package:hackathon_app/widgets/leaderboard_tile.dart';

class LeaderBoard extends StatelessWidget {
  static const routeName = '/leaderboard';
  const LeaderBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding:
              EdgeInsets.only(top: getSafeArea(context), left: 20, right: 20),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back_ios),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    'Leaderboard',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              const Row(
                children: [
                  Expanded(
                    child: LedaerBoradRanking(
                      image: "https://picsum.photos/210",
                      name: "John Doe",
                      points: "1300",
                      height: 100,
                      maxheight: 150,
                      rank: "2",
                    ),
                  ),
                  Expanded(
                    child: LedaerBoradRanking(
                      image: "https://picsum.photos/205",
                      name: "John Doe",
                      points: "1500",
                      height: 150,
                      maxheight: 150,
                      rank: "1",
                    ),
                  ),
                  Expanded(
                    child: LedaerBoradRanking(
                      image: "https://picsum.photos/200",
                      name: "John Doe",
                      points: "1100",
                      height: 70,
                      maxheight: 150,
                      rank: "3",
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Card(
                color: themeColor,
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundImage:
                                NetworkImage("https://picsum.photos/215"),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "John Doe",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        "Points:\n200",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "Level:\nRookie",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "Rank:\n143",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Column(
                children: [
                  LeaderBoardTile(
                    rank: '04',
                    name: 'John Doe',
                    points: '940',
                  ),
                  LeaderBoardTile(
                    rank: '05',
                    name: 'John Doe',
                    points: '910',
                  ),
                  LeaderBoardTile(
                    rank: '06',
                    name: 'John Doe',
                    points: '860',
                  ),
                  LeaderBoardTile(
                    rank: '07',
                    name: 'John Doe',
                    points: '820',
                  ),
                  LeaderBoardTile(
                    rank: '08',
                    name: 'John Doe',
                    points: '740',
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
