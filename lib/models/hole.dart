class Hole {
  final int id;
  int seeds;
  final int owner;

  Hole({
    required this.id,
    required this.seeds,
    required this.owner,
  });

  bool get isEmpty => seeds == 0;
}