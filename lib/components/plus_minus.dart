import 'package:flutter/material.dart';

class PlusOrMinusButton extends StatelessWidget {
  final Color color;
  final IconData icondata;
  final Function()? function;
  const PlusOrMinusButton(
      {required this.color, this.function, required this.icondata, super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: function,
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
