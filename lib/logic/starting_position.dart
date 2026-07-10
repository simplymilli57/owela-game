import '../models/hole.dart';

class StartingPosition {
  static List<Hole> createBoard() {
    List<Hole> board = [];

    for (int i = 1; i <= 60; i++) {
      int seeds = 0;

      // Temporary setup:
      // Player 1 holes
      if (i <= 15) {
        seeds = 2;
      }

      // Player 2 holes
      if (i >= 46) {
        seeds = 2;
      }

      board.add(
        Hole(
          id: i,
          seeds: seeds,
          owner: i <= 30 ? 1 : 2,
        ),
      );
    }

    return board;
  }
}