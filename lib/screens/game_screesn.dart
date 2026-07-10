import 'package:flutter/material.dart';
import '../widgets/owela_board.dart';
import '../logic/sowing_engine.dart';
class GameScreen extends StatelessWidget {
  const GameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Owela Board"),
      ),
      body: const Padding(
        padding: EdgeInsets.all(8.0),
        child: OwelaBoard(),
      ),
    );
  }
}