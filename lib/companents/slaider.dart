import 'package:flutter/cupertino.dart';

import 'package:tirkeme9bmi2/constants/app_colors.dart';

import '../constants/app_text.dart';

class SlaiderWidget extends StatelessWidget {
  const SlaiderWidget(
      {super.key, required this.height, required this.value, this.onChanged});
  final String height;
  final double value;
  final void Function(double)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          AppText.height,
          style: TextStyle(
            fontSize: 30,
            color: AppColors.textcolor,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              height,
              style: const TextStyle(
                fontSize: 50,
                color: AppColors.white,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 8),
              child: Text(
                AppText.cm,
                style: TextStyle(
                  fontSize: 22,
                  color: AppColors.textcolor,
                ),
              ),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: SizedBox(
            width: double.infinity,
            child: CupertinoSlider(
              value: value,
              max: 300,
              activeColor: AppColors.textcolor,
              thumbColor: AppColors.redColors,
              onChanged: onChanged,
            ),
          ),
        ),
      ],
    );
  }
}
