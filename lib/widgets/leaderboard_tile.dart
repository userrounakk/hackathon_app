import 'package:flutter/material.dart';

class LeaderBoardTile extends StatelessWidget {
  final String rank;
  final String name;
  final String points;
  const LeaderBoardTile({
    required this.rank,
    required this.name,
    required this.points,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text(
        rank,
        style: const TextStyle(fontSize: 30),
      ),
      title: Text(name),
      subtitle: Text(
        'Rank: $points',
        style: const TextStyle(fontSize: 10),
      ),
      trailing: const Icon(Icons.arrow_forward_ios),
    );
  }
}
