class CaptureRules {

  bool canCapture(int holeIndex, int seedsInHole) {
    // A capture requires the landing hole to contain seeds
    return seedsInHole > 0;
  }

  int oppositeHole(int holeIndex) {
    // Opposite side of the 60-hole board
    return (holeIndex + 30) % 60;
  }
}