import 'package:flutter/material.dart';
import 'package:tirkeme9bmi2/constants/app_colors.dart';

import '../constants/app_text.dart';

class Calculete extends StatelessWidget {
  const Calculete({
    super.key,
    required this.onTap,
  });
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        color: AppColors.redColors,
        width: double.infinity,
        height: 70,
        child: const Center(
            child: Text(
          AppText.calculate,
          style: TextStyle(fontSize: 25, color: AppColors.white),
        )),
      ),
    );
  }
}
