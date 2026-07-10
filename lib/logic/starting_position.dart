import '../models/hole.dart';

class StartingPosition {
  static List<Hole> createBoard() {
    List<Hole> board = [];

    for (int i = 1; i <= 60; i++) {
      int seeds = 0;

      // Player 1 starting seeds
      if (i >= 1 && i <= 15) {
        seeds = 2;
      }

      if (i >= 16 && i <= 19) {
        seeds = 2;
      }

      // Player 2 starting seeds (mirrored)
      if (i >= 46 && i <= 60) {
        seeds = 2;
      }

      if (i >= 42 && i <= 45) {
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