import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:tirkeme9bmi2/constants/app_colors.dart';

class WeightAge extends StatelessWidget {
  const WeightAge({
    super.key,
    required this.text,
    required this.remove,
    required this.add,
    required this.value,
  });
  final String text;

  final int value;
  final void Function(int) remove;
  final void Function(int) add;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        color: AppColors.cardColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: const TextStyle(
                color: AppColors.textcolor,
                fontWeight: FontWeight.w600,
                fontSize: 22,
              ),
            ),
            Text(
              "$value",
              style: const TextStyle(
                color: AppColors.textcolor,
                fontSize: 50,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatButton(
                  onPressed: () => remove(value - 1),
                  icon: Icons.remove,
                ),
                const SizedBox(width: 10),
                FloatButton(
                  onPressed: () => add(value + 1),
                  icon: Icons.add,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class FloatButton extends StatelessWidget {
  const FloatButton({
    Key? key,
    required this.onPressed,
    required this.icon,
  }) : super(key: key);

  final void Function()? onPressed;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: AppColors.btnColors,
      foregroundColor: AppColors.redColors,
      onPressed: onPressed,
      child: Icon(
        icon,
        size: 50,
      ),
    );
  }
}
