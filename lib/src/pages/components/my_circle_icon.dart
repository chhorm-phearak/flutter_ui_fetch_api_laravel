import 'package:flutter/material.dart';

class MyCircleIcon extends StatelessWidget {
  final icon;
  MyCircleIcon({
    super.key,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        border: Border.all(
          color: Colors.white70,
        ),
      ),
      child: CircleAvatar(
        backgroundColor: Colors.grey[400],
        child: Icon(icon),
      ),
    );
  }
}
