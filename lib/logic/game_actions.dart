class GameActions {

  int lastLandingHole = -1;

  void recordLanding(int hole) {
    lastLandingHole = hole;
  }

  void reset() {
    lastLandingHole = -1;
  }
}