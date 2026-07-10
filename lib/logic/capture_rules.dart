class CaptureRules {

  int oppositeHole(int holeIndex) {
    return (holeIndex + 30) % 60;
  }

  bool canCapture(
    int landingHole,
    List<int> seeds,
    int currentPlayer,
  ) {

    // The landing hole must have seeds
    if (seeds[landingHole] == 0) {
      return false;
    }

    // Find opponent's opposite hole
    int opposite = oppositeHole(landingHole);

    // Opponent must have seeds to capture
    if (seeds[opposite] == 0) {
      return false;
    }

    return true;
  }

  List<int> capture(
    int landingHole,
    List<int> seeds,
  ) {

    int opposite = oppositeHole(landingHole);

    // Remove captured seeds
    seeds[opposite] = 0;

    return seeds;
  }
}