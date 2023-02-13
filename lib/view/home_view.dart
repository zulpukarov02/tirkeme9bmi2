import 'dart:math';

import 'package:flutter/material.dart';
import 'package:tirkeme9bmi2/companents/Status_card.dart';
import 'package:tirkeme9bmi2/companents/calculate.dart';
import 'package:tirkeme9bmi2/companents/slaider.dart';
import 'package:tirkeme9bmi2/constants/app_colors.dart';
import 'package:tirkeme9bmi2/constants/app_text.dart';

import 'package:tirkeme9bmi2/companents/weightage.dart';
import 'package:tirkeme9bmi2/view/aler_dialog.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  bool isfemale = false;
  double height = 180;
  int weight = 60;
  int age = 28;
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
                children: [
                  StatusCard(
                    onTap: () {
                      setState(() {
                        isfemale = false;
                      });
                    },
                    icon: Icons.male,
                    text: AppText.male,
                    isFemale: !isfemale,
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  StatusCard(
                    onTap: () {
                      setState(() {
                        isfemale = true;
                      });
                    },
                    icon: Icons.female,
                    text: AppText.female,
                    isFemale: isfemale,
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
                  height: height.toStringAsFixed(1),
                  value: height,
                  onChanged: (double value) {
                    setState(() {
                      height = value;
                    });
                  },
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  WeightAge(
                      text: AppText.weight,
                      value: weight,
                      remove: (c) {
                        setState(() {});
                        weight = c;
                      },
                      add: (c) {
                        weight = c;
                        setState(() {});
                      }),
                  const SizedBox(
                    width: 10,
                  ),
                  WeightAge(
                      text: AppText.age,
                      value: age,
                      remove: (c) {
                        setState(() {});
                        age = c;
                      },
                      add: (c) {
                        setState(() {});
                        age = c;
                      }),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Calculete(
        onTap: (() {
          // final result = (weight/(height/100)*(height/100));
          final res = weight / pow(height / 100, 2);
          // print(res.toInt());

          if (res <= 18) {
            // print("aryyk jee");
            showMyDialog(context: context, text: 'hudoi');
          } else if (res >= 18 && res <= 24) {
            // print("norma");
            showMyDialog(context: context, text: 'norma');
          } else if (res >= 25) {
            // print("Semiz");
            showMyDialog(context: context, text: 'lishnyi ves');
          } else if (res >= 26) {
            // print('$res eseptei albai kalday');
            showMyDialog(context: context, text: 'tolstyi');
          }
        }),
      ),
    );
  }
}
