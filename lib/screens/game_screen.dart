import 'package:flutter/material.dart';
import '../widgets/owela_board.dart';
import '../logic/starting_position.dart';

class GameScreen extends StatefulWidget {
  const GameScreen({super.key});

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {

  late List<int> seeds;

  @override
  void initState() {
    super.initState();

    final board = StartingPosition.createBoard();

    seeds = board.map((hole) => hole.seeds).toList();
  }

  void onHoleTap(int index) {
  setState(() {

    int seedsToMove = seeds[index];

    // A player cannot play an empty hole
    if (seedsToMove == 0) {
      return;
    }

    seeds[index] = 0;

    int currentHole = index;

    while (seedsToMove > 0) {
      currentHole = (currentHole + 1) % 60;

      seeds[currentHole]++;

      seedsToMove--;
    }

  });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Owela Board"),
      ),
      body: OwelaBoard(
        seeds: seeds,
        onHoleTap: onHoleTap,
      ),
    );
  }
}