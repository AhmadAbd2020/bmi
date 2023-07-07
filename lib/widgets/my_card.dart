import 'package:bmi_tt9/constants.dart';
import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  MyCard({super.key, required this.body, this.isSelected = true, this.fun});
  final Function()? fun;
  bool isSelected;
  final Widget body;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: fun,
      child: Container(
        margin: const EdgeInsets.all(12),
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: isSelected ? widgetColor : notSelectedColor,
        ),
        child: body,
      ),
    );
  }
}
