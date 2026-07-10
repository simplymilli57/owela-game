class CaptureRules {

  int oppositeHole(int holeIndex) {
    return (holeIndex + 30) % 60;
  }

  int captureAmount(
    int landingHole,
    List<int> seeds,
  ) {
    int opposite = oppositeHole(landingHole);

    return seeds[opposite];
  }

  bool canCapture(
    int landingHole,
    List<int> seeds,
    int currentPlayer,
  ) {

    if (seeds[landingHole] == 0) {
      return false;
    }

    int opposite = oppositeHole(landingHole);

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

    seeds[opposite] = 0;

    return seeds;
  }
}