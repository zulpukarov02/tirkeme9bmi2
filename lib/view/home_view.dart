import 'package:flutter/material.dart';
import 'package:tirkeme9bmi2/companents/Status_card.dart';
import 'package:tirkeme9bmi2/companents/slaider.dart';
import 'package:tirkeme9bmi2/constants/app_colors.dart';
import 'package:tirkeme9bmi2/constants/app_text.dart';

import 'package:tirkeme9bmi2/companents/weightage.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  double _currentSliderValue = 180;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.bgColor,
        title: const Text(AppText.appBarTitle),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: const [
                  StatusCard(
                    icon: Icons.male,
                    text: AppText.male,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  StatusCard(
                    icon: Icons.female,
                    text: AppText.female,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)),
                color: AppColors.cardColor,
                child: SlaiderWidget(
                  height: _currentSliderValue.toStringAsFixed(0),
                  value: _currentSliderValue,
                  onChanged: (double value) {
                    setState(() {
                      _currentSliderValue = value;
                    });
                  },
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: const [
                  WeightAge(
                    text: AppText.weight,
                    text2: '60',
                  ),
                  WeightAge(
                    text: AppText.age,
                    text2: '28',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
