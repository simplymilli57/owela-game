class WinnerChecker {

  String checkWinner(
    int playerOneScore,
    int playerTwoScore,
  ) {

    if (playerOneScore > playerTwoScore) {
      return "Player 1 Wins!";
    }

    if (playerTwoScore > playerOneScore) {
      return "Player 2 Wins!";
    }

    return "Draw!";
  }
}