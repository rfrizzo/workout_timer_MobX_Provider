import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:workout_timer/components/in_time.dart';
import 'package:workout_timer/components/stopwatch.dart';
import 'package:workout_timer/store/workout.store.dart';

class Workout extends StatelessWidget {
  const Workout({super.key});

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<WorkOutStore>(context);
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Expanded(child: StoppWatch()),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Observer(
              builder: (_) => Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InTime(
                    plus: store.started && store.isWorking()
                        ? null
                        : store.increasetimework,
                    minus: store.started && store.isWorking()
                        ? null
                        : store.decreasetimework,
                    value: store.workoutTime,
                    title: 'Work',
                    color: Colors.red,
                  ),
                  InTime(
                    plus: store.started && store.isResting()
                        ? null
                        : store.increasetimerest,
                    minus: store.started && store.isResting()
                        ? null
                        : store.decreasetimerest,
                    value: store.restTime,
                    title: 'Rest',
                    color: Colors.green,
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
