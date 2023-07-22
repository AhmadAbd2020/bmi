import 'package:bmi/brain/bmi_brain.dart';
import 'package:bmi/screens/input_screen.dart';
import 'package:bmi/widgets/my_button.dart';
import 'package:bmi/widgets/my_card.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
   ResultScreen({
    Key? key,
    required this.result,
  }) : super(key: key);
  final double result;
  final BMIBrain bmiBrain = BMIBrain();

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
                bmiBrain.resultCategory(result),
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 48),
              ),
              Text(
                result.toStringAsFixed(1),
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 48),
              ),
              Text(
                bmiBrain.resultPhrase(result),
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 48),
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
