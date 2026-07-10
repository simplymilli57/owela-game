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