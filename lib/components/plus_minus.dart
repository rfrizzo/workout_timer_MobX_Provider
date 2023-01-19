import 'package:flutter/material.dart';

class PlusOrMinusButton extends StatelessWidget {
  final Color color;
  final IconData icondata;
  const PlusOrMinusButton(
      {required this.color, required this.icondata, super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),
          backgroundColor: color,
          padding: const EdgeInsets.all(15)),
      child: Icon(
        icondata,
        color: Colors.white,
      ),
    );
  }
}
