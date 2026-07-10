class Player {
  final int id;
  final String name;
  final List<int> holes;
  int capturedSeeds;

  Player({
    required this.id,
    required this.name,
    required this.holes,
    this.capturedSeeds = 0,
  });
}