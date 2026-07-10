import 'package:flutter/material.dart';

class OwelaBoard extends StatelessWidget {
  final List<int> seeds;
  final Function(int) onHoleTap;

  const OwelaBoard({
    super.key,
    required this.seeds,
    required this.onHoleTap,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 60,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 10,
      ),
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            onHoleTap(index);
          },
          child: Container(
            margin: const EdgeInsets.all(4),
            decoration: BoxDecoration(
              border: Border.all(),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(
              child: Text(
                '${seeds[index]}',
                style: const TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}