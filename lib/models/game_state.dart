import 'hole.dart';
import 'player.dart';

class GameState {
  final List<Hole> board;
  final Player playerOne;
  final Player playerTwo;
  int currentPlayer;

  GameState({
    required this.board,
    required this.playerOne,
    required this.playerTwo,
    this.currentPlayer = 1,
  });

  Player get activePlayer {
    return currentPlayer == 1 ? playerOne : playerTwo;
  }

  void switchTurn() {
    currentPlayer = currentPlayer == 1 ? 2 : 1;
  }
}