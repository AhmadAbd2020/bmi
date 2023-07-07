import 'package:flutter/material.dart';

import '../screens/result_screen.dart';

class MyButton extends StatelessWidget {
  const MyButton({super.key,  required this.str, required this.fun});

final String str;
final Function() fun;
  @override
  Widget build(BuildContext context) {
    return InkWell(
              onTap: fun,
              child: Container(
                height: 80,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.red,
                ),
                child:  Center(
                  child: Text(
                    str,
                    style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                ),
              ),
            );
  }
}