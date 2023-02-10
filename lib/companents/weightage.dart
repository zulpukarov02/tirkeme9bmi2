import 'package:flutter/material.dart';
import 'package:tirkeme9bmi2/constants/app_colors.dart';

class WeightAge extends StatelessWidget {
  const WeightAge({
    super.key,
    required this.text,
    required this.text2,
  });
  final String text;
  final String text2;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
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
              text2,
              style: const TextStyle(
                color: AppColors.textcolor,
                fontSize: 50,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  backgroundColor: AppColors.btnColors,
                  foregroundColor: AppColors.redColors,
                  onPressed: () {},
                  child: const Icon(
                    Icons.remove,
                    size: 50,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                FloatingActionButton(
                  backgroundColor: AppColors.btnColors,
                  foregroundColor: AppColors.redColors,
                  onPressed: () {},
                  child: const Icon(
                    Icons.add,
                    size: 50,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
