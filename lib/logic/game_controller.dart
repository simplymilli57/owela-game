import '../models/game_state.dart';
import 'owela_engine.dart';
import 'starting_position.dart';
import '../models/player.dart';

class GameController {
  late GameState game;

  void startGame() {
    final engine = OwelaEngine();

    game = GameState(
      board: StartingPosition.createBoard(),
      playerOne: Player(
        id: 1,
        name: "Player 1",
        holes: List.generate(30, (index) => index + 1),
      ),
      playerTwo: Player(
        id: 2,
        name: "Player 2",
        holes: List.generate(30, (index) => index + 31),
      ),
    );
  }
}