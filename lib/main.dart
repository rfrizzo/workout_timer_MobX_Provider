import 'package:flutter/material.dart';
import 'package:workout_timer/pages/workout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WorkOut Timer',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Workout(),
    );
  }
}
