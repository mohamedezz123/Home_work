import 'package:fhomework3/sections/age_weight_section.dart';
import 'package:fhomework3/sections/gender_section.dart';
import 'package:fhomework3/sections/hieght_section.dart';
import 'package:fhomework3/views/bmi_result_view.dart';
import 'package:fhomework3/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  double height = 175;
  double weight = 65;
  bool isMale = true;
  double age = 23;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff03051A),
      appBar: AppBar(
        backgroundColor: Color(0xff04061D),
        title: Text('BMI CALCULATOR', style: TextStyle(color: Colors.white)),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(32),
            child: Column(
              children: [
                GenderSection(
                  isMale: isMale,
                  onMaleTap: () {
                    isMale = true;
                    setState(() {});
                  },
                  onFemaleTap: () {
                    isMale = false;
                    setState(() {});
                  },
                ),
                SizedBox(height: 15),
                HieghtSection(
                  height: height,
                  onChanged: (value) {
                    height = value;
                    setState(() {});
                  },
                ),
                SizedBox(height: 15),
                AgeWeightSection(
                  weight: weight,
                  age: age,
                  onWeightIncrement: () {
                    weight++;
                    setState(() {});
                  },
                  onWeightDecrement: () {
                    weight--;
                    setState(() {});
                  },
                  onAgeIncrement: () {
                    age++;
                    setState(() {});
                  },
                  onAgeDecrement: () {
                    age--;
                    setState(() {});
                  },
                ),
              ],
            ),
          ),
          Spacer(flex: 1),
          CustomButton(
            text: 'CALCULATE',
            onPressed: () {
              double bmiResult = calculateBMI(height: height, weight: weight);
              print(bmiResult);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BmiResultView(bmi: bmiResult),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

double calculateBMI({required double height, required double weight}) {
  double heightInMeter = height / 100;
  return weight / (heightInMeter * heightInMeter);
}
