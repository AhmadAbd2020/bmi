import 'package:bmi_tt9/constants.dart';
import 'package:flutter/material.dart';

class Gender extends StatelessWidget {
  const Gender({super.key, required this.genderIcon, required this.genderText});
  final IconData genderIcon;
  final String genderText;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          genderIcon,
          size: 60,
        ),
        const SizedBox(
          height: 8,
        ),
        Text(genderText)
      ],
    );
  }
}
