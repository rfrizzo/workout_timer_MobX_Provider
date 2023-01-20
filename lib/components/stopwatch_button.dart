import 'package:flutter/material.dart';

class StopWatchButton extends StatelessWidget {
  final String text;
  final IconData icon;
  void Function() action;

  StopWatchButton(
      {required this.action,
      required this.text,
      required this.icon,
      super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.black,
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          textStyle: const TextStyle(fontSize: 25)),
      onPressed: action,
      child: Row(
        children: [
          Icon(
            icon,
            size: 35,
          ),
          const SizedBox(
            width: 5,
          ),
          Text(text)
        ],
      ),
    );
  }
}
