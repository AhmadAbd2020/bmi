import 'package:bmi/widgets/my_fab.dart';
import 'package:flutter/material.dart';

class GradualCard extends StatelessWidget {
  const GradualCard(
      {super.key,
      required this.typeText,
      required this.numberText,
      required this.addFunction,
      required this.removeFunction});
  final String typeText, numberText;
  final Function() addFunction, removeFunction;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(typeText),
        const SizedBox(
          height: 4,
        ),
        Text(
          numberText,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            MyFab(
              onPressed: addFunction,
              icon: Icons.add,
            ),
            MyFab(
              onPressed: removeFunction,
              icon: Icons.remove,
            ),
          ],
        ),
      ],
    );
  }
}


