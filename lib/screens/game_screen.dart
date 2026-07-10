import '../logic/sowing_engine.dart';
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
  setState(() void onHoleTap(int index) {
  setState(() {

    // Player 1 controls holes 1-30
    if (currentPlayer == 1 && index >= 30) {
      return;
    }

    // Player 2 controls holes 31-60
    if (currentPlayer == 2 && index < 30) {
      return;
    }

    // Cannot play a hole with less than 2 seeds
    if (seeds[index] < 2) {
      return;
    }

    int seedsToMove = seeds[index];

    seeds[index] = 0;

    int currentHole = index;

    while (seedsToMove > 0) {
      currentHole = (currentHole + 1) % 60;
      seeds[currentHole]++;
      seedsToMove--;
    }

    // Change player turn
    currentPlayer = currentPlayer == 1 ? 2 : 1;

  });
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