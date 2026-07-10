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