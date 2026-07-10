class ScoreManager {

  int playerOneScore = 0;
  int playerTwoScore = 0;

  void addScore(int player, int amount) {

    if (player == 1) {
      playerOneScore += amount;
    } else {
      playerTwoScore += amount;
    }
  }

  int getScore(int player) {

    if (player == 1) {
      return playerOneScore;
    } else {
      return playerTwoScore;
    }
  }
}