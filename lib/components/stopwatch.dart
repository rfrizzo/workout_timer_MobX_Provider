import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:workout_timer/components/stopwatch_button.dart';
import 'package:workout_timer/store/workout.store.dart';

class StoppWatch extends StatelessWidget {
  const StoppWatch({super.key});

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<WorkOutStore>(context);
    return Observer(
      builder: (_) => Container(
        color: store.isWorking() ? Colors.red : Colors.green,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              store.isWorking() ? 'Time To Workout' : 'Rest Time',
              style: const TextStyle(fontSize: 40, color: Colors.white),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              '${store.minutes.toString().padLeft(2, '0')}: ${store.seconds.toString().padLeft(2, '0')}',
              style: const TextStyle(fontSize: 120, color: Colors.white),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                if (!store.started)
                  StopWatchButton(
                    text: 'Start',
                    icon: Icons.play_arrow,
                    action: store.start,
                  ),
                if (store.started)
                  StopWatchButton(
                      action: store.stop, text: 'Stop', icon: Icons.stop),
                StopWatchButton(
                    action: store.restart, text: 'Reset', icon: Icons.refresh)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
