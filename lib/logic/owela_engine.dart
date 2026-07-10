import '../models/hole.dart';
import '../models/player.dart';
import '../models/game_state.dart';

class OwelaEngine {

  GameState createGame() {
    List<Hole> board = [];

    // Create 60 holes
    for (int i = 1; i <= 60; i++) {
      board.add(
        Hole(
          id: i,
          seeds: 0,
          owner: i <= 30 ? 1 : 2,
        ),
      );
    }

    Player playerOne = Player(
      id: 1,
      name: "Player 1",
      holes: List.generate(30, (index) => index + 1),
    );

    Player playerTwo = Player(
      id: 2,
      name: "Player 2",
      holes: List.generate(30, (index) => index + 31),
    );

    return GameState(
      board: board,
      playerOne: playerOne,
      playerTwo: playerTwo,
    );
  }
}