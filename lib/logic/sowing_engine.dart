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
class SowingEngine {

  int lastLandingHole = -1;

  List<int> sow(List<int> seeds, int startHole) {

    int movingSeeds = seeds[startHole];

    seeds[startHole] = 0;

    int currentHole = startHole;

    while (movingSeeds > 0) {

      currentHole = (currentHole + 1) % 60;

      lastLandingHole = currentHole;

      seeds[currentHole]++;

      movingSeeds--;

      // Continue sowing if the last seed lands
      // in a hole that already has seeds
      if (movingSeeds == 0 && seeds[currentHole] > 1) {
        movingSeeds = seeds[currentHole];
        seeds[currentHole] = 0;
      }
    }

    return seeds;
  }
}