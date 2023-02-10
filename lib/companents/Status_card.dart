import 'package:flutter/material.dart';
import 'package:tirkeme9bmi2/constants/app_colors.dart';

class StatusCard extends StatelessWidget {
  const StatusCard({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        color: AppColors.cardColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 80,
              color: AppColors.white,
            ),
            Text(
              text,
              style: const TextStyle(
                fontSize: 22,
                color: AppColors.textcolor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
