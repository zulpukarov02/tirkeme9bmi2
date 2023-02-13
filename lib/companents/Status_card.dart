import 'package:flutter/material.dart';
import 'package:tirkeme9bmi2/constants/app_colors.dart';

class StatusCard extends StatelessWidget {
  const StatusCard({
    Key? key,
    required this.icon,
    required this.text,
    required this.isFemale,
    required this.onTap,
  }) : super(key: key);
  final IconData icon;
  final String text;
  final bool isFemale;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
          color: AppColors.cardColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                size: 80,
                color: isFemale ? AppColors.white : null,
              ),
              Text(
                text,
                style: TextStyle(
                  fontSize: 22,
                  color: isFemale ? AppColors.textcolor : null,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
