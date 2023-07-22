
import 'package:bmi/constants.dart';
import 'package:flutter/material.dart';

class MyFab extends StatelessWidget {
  const MyFab({
    Key? key,
    required this.onPressed,
    required this.icon,
  }) : super(key: key);
  final Function() onPressed;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      constraints: const BoxConstraints(minWidth: 36, minHeight: 36),
      padding: const EdgeInsets.all(16),
      shape: const CircleBorder(),
      fillColor: fillColor,
      onPressed: onPressed,
      child: Icon(icon),
    );
  }
}
