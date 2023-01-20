import 'package:flutter/material.dart';
import 'package:workout_timer/pages/workout.dart';
import 'package:provider/provider.dart';
import 'package:workout_timer/store/workout.store.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<WorkOutStore>(
          create: (_) => WorkOutStore(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'WorkOut Timer',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const Workout(),
      ),
    );
  }
}
