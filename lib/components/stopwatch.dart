import 'package:flutter/material.dart';
import 'package:workout_timer/components/stopwatch_button.dart';

class StoppWatch extends StatelessWidget {
  const StoppWatch({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Time To Workout',
            style: TextStyle(fontSize: 40, color: Colors.white),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            '25:00',
            style: TextStyle(fontSize: 120, color: Colors.white),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              StopWatchButton(
                text: 'Iniciar',
                icon: Icons.play_arrow,
              ),
              // StopWatchButton(text: 'Parar', icon: Icons.stop),
              StopWatchButton(text: 'Reiniciar', icon: Icons.refresh)
            ],
          )
        ],
      ),
    );
  }
}
