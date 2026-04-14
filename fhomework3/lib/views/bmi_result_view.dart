import 'package:fhomework3/sections/result_section.dart';
import 'package:fhomework3/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BmiResultView extends StatelessWidget {
  const BmiResultView({super.key, required this.bmi});

  final double bmi;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff03051A),
      appBar: AppBar(
        backgroundColor: const Color(0xff04061D),
        title: const Text("BMI RESULT", style: TextStyle(color: Colors.white)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ResultSection(bmi: bmi),

            const SizedBox(height: 20),
            Spacer(flex: 1),

            CustomButton(
              text: "RE-CALCULATE",
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
