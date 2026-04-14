import 'package:fhomework3/widgets/value_adjuster.dart';
import 'package:flutter/material.dart';

class AgeWeightSection extends StatelessWidget {
  const AgeWeightSection({
    super.key,

    required this.weight,
    required this.age,
    required this.onWeightIncrement,
    required this.onWeightDecrement,
    required this.onAgeIncrement,
    required this.onAgeDecrement,
  });

  final double weight;
  final double age;

  final VoidCallback onWeightIncrement;
  final VoidCallback onWeightDecrement;
  final VoidCallback onAgeIncrement;
  final VoidCallback onAgeDecrement;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ValueAdjuster(
          label: 'WEIGHT',
          value: weight,
          onDecrement: onWeightDecrement,
          onIncrement: onWeightIncrement,
        ),
        ValueAdjuster(
          label: 'AGE',
          value: age,
          onDecrement: onAgeDecrement,
          onIncrement: onAgeIncrement,
        ),
      ],
    );
  }
}
