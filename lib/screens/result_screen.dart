
import 'package:flutter/material.dart';

import 'package:bmi_tt9/screens/input_screen.dart';
import 'package:bmi_tt9/widgets/my_button.dart';
import 'package:bmi_tt9/widgets/my_card.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({
    Key? key,
    required this.result,
  }) : super(key: key);
  final double result;

  String get resultCategory {
    String res = '';
    if (18.5 <= result && result <= 24.9) {
      res = 'Normal';
    } else if (result < 18.5) {
      res = 'Underweight';
    } else {
      res = 'Overweight';
    }
    return res;
  }

  String get resultPhrase {
    String res = '';
    if (18.5 <= result && result <= 24.9) {
      res = 'You are too good, Keep it up';
    } else if (result < 18.5) {
      res = 'You need to eat more to be  healthy';
    } else {
      res = 'You need more practice';
    }
    return res;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Result Screen'),
      ),
      body: Column(
        children: [
          Expanded(
              child: MyCard(
                  body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                resultCategory,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 48),
              ),
              Text(
                result.toStringAsFixed(1),
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 48),
              ),
              Text(
                resultPhrase,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 48),
              ),
            ],
          ))),
          MyButton(
              fun: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const InputScreen(),
                    ));
              },
              str: 'ReCalculate')
        ],
      ),
    );
  }
}
