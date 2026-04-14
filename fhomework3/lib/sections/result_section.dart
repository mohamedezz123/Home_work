import 'package:flutter/material.dart';

class ResultSection extends StatelessWidget {
  const ResultSection({super.key, required this.bmi});
  final double bmi;
  String getResult() {
    if (bmi < 18.5) {
      return "UNDERWEIGHT";
    } else if (bmi < 25) {
      return "NORMAL";
    } else if (bmi < 30) {
      return "OVERWEIGHT";
    } else {
      return "OBESE";
    }
  }

  String getInterpretation() {
    if (bmi < 18.5) {
      return "You have a lower than normal body weight. Try to eat more balanced meals.";
    } else if (bmi < 25) {
      return "You have a normal body weight. Good job!";
    } else if (bmi < 30) {
      return "You have a higher than normal body weight. Try to exercise more.";
    } else {
      return "Your BMI indicates obesity. Consider consulting a doctor.";
    }
  }

  Color getColor() {
    if (bmi < 25) {
      return Colors.green;
    } else {
      return Colors.orange;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          "Your Result",
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),

        const SizedBox(height: 20),

        Expanded(
          child: Container(
            padding: const EdgeInsets.all(24),
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(.1),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  getResult(),
                  style: TextStyle(
                    color: getColor(),
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 20),

                Text(
                  bmi.toStringAsFixed(1),
                  style: const TextStyle(
                    fontSize: 80,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),

                const SizedBox(height: 20),

                Text(
                  getInterpretation(),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white.withOpacity(.7),
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
