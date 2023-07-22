// ignore_for_file: library_private_types_in_public_api

import 'dart:math';

import 'package:bmi/brain/bmi_brain.dart';
import 'package:bmi/widgets/gender.dart';
import 'package:bmi/widgets/gradual_card.dart';
import 'package:bmi/widgets/my_button.dart';
import 'package:bmi/widgets/my_card.dart';
import 'package:flutter/material.dart';

import 'result_screen.dart';

class InputScreen extends StatefulWidget {
  const InputScreen({super.key});

  @override
  _InputScreenState createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  final bmiBrain = BMIBrain();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('BMI CALCULATOR'),
        ),
        body: Column(
          children: [
            Row(
              children: [
                Expanded(
                    child: MyCard(
                        isSelected: bmiBrain.isMaleSelected,
                        fun: () {
                          setState(() {
                            bmiBrain.isFemaleSelected = false;
                            bmiBrain.isMaleSelected = true;
                          });
                        },
                        body: const Gender(
                            genderIcon: Icons.male, genderText: 'Male'))),
                Expanded(
                    child: MyCard(
                        isSelected: bmiBrain.isFemaleSelected,
                        fun: () {
                          setState(() {
                            bmiBrain.isFemaleSelected = true;
                            bmiBrain.isMaleSelected = false;
                          });
                        },
                        body: const Gender(
                            genderIcon: Icons.female, genderText: 'Female'))),
              ],
            ),
            Expanded(
              child: MyCard(
                  body: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    "HEIGHT",
                    style: TextStyle(fontSize: 24),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        bmiBrain.height.floor().toString(),
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 54),
                      ),
                      const Text(
                        "cm",
                        style: TextStyle(),
                      ),
                    ],
                  ),
                  Slider(
                      max: 220,
                      min: 150,
                      divisions: 70,
                      value: bmiBrain.height,
                      onChanged: (val) {
                        setState(() {
                          bmiBrain.changeHeight(val);
                        });
                      }),
                ],
              )),
            ),
            Row(
              children: [
                Expanded(
                  child: MyCard(
                    body: GradualCard(
                        typeText: 'Weight',
                        numberText: bmiBrain.weight.toString(),
                        addFunction: () {
                          setState(() {
                            bmiBrain.increaseWeight();
                          });
                        },
                        removeFunction: () {
                          setState(() {
                            bmiBrain.decreaseWeight();
                          });
                        }),
                  ),
                ),
                Expanded(
                  child: MyCard(
                    body: GradualCard(
                        typeText: 'Age',
                        numberText: bmiBrain.age.toString(),
                        addFunction: () {
                          setState(() {
                            bmiBrain.increaseAge();
                          });
                        },
                        removeFunction: () {
                          setState(() {
                            bmiBrain.decreaseAge();
                          });
                        }),
                  ),
                ),
              ],
            ),
            MyButton(
                fun: () {
                  double result = bmiBrain.calculateBMI();
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ResultScreen(result: result),
                      ));
                },
                str: 'Calculate')
          ],
        ));
  }
}
