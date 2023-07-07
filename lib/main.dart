import 'package:bmi_tt9/constants.dart';
import 'package:bmi_tt9/screens/input_screen.dart';
import 'package:bmi_tt9/widgets/my_fab.dart';
import 'package:flutter/material.dart';

void main() => runApp(const BMICalculator());

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor,
        appBarTheme:
            const AppBarTheme(backgroundColor: backgroundColor, elevation: 0),
        colorScheme: Theme.of(context)
            .colorScheme
            .copyWith(primary: Colors.red, secondary: Colors.yellow),
      ),
      home: const InputScreen(),
    );
  }
}


