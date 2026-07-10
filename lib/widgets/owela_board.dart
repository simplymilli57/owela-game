import 'package:flutter/material.dart';

class OwelaBoard extends StatelessWidget {
  const OwelaBoard({super.key});

  @override
  Widget build(BuildContext context) {
    List<int> seeds = List.filled(60, 0);

    return GridView.builder(
      itemCount: 60,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 10,
      ),
      itemBuilder: (context, index) {
        return Container(
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
        );
      },
    );
  }
}