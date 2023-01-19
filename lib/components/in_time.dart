import 'package:flutter/material.dart';
import 'package:workout_timer/components/plus_minus.dart';

class InTime extends StatelessWidget {
  String title;
  int value;
  Color color;
  InTime(
      {super.key,
      required this.color,
      required this.value,
      required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(title, style: const TextStyle(fontSize: 25)),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            PlusOrMinusButton(color: color, icondata: Icons.arrow_downward),
            Text(
              '$value min',
              style: const TextStyle(fontSize: 18),
            ),
            PlusOrMinusButton(color: color, icondata: Icons.arrow_upward),
          ],
        ),
      ],
    );
  }
}
