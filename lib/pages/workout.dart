import 'package:flutter/material.dart';
import 'package:workout_timer/components/intime.dart';
import 'package:workout_timer/components/stopwatch.dart';

class Workout extends StatelessWidget {
  const Workout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Expanded(child: StoppWatch()),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InTime(
                  value: 10,
                  title: 'Work',
                  color: Colors.red,
                ),
                InTime(
                  value: 5,
                  title: 'Rest',
                  color: Colors.green,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
