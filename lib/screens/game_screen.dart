import 'package:flutter/material.dart';
import '../widgets/owela_board.dart';
import '../logic/starting_position.dart';
import '../logic/sowing_engine.dart';
import '../logic/capture_rules.dart';
class GameScreen extends StatefulWidget {
  const GameScreen({super.key});

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {

  late List<int> seeds;

  int currentPlayer = 1;

  final SowingEngine sowingEngine = SowingEngine();

  @override
  void initState() {
    super.initState();

    final board = StartingPosition.createBoard();

    seeds = board.map((hole) => hole.seeds).toList();
  }

  void onHoleTap(int index) {

    setState(() {

      // Player 1 plays holes 1-30
      if (currentPlayer == 1 && index >= 30) {
        return;
      }

      // Player 2 plays holes 31-60
      if (currentPlayer == 2 && index < 30) {
        return;
      }

      // Cannot play empty or single seed holes
      if (seeds[index] < 2) {
        return;
      }

      seeds = sowingEngine.sow(seeds, index);

      // Change player turn
      currentPlayer = currentPlayer == 1 ? 2 : 1;

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