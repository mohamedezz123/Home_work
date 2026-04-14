import 'package:fhomework3/widgets/rounded_icon_button.dart';
import 'package:flutter/material.dart';

class ValueAdjuster extends StatelessWidget {
  const ValueAdjuster({
    super.key,
    required this.label,
    required this.value,
    required this.onIncrement,
    required this.onDecrement,
  });
  final String label;
  final double value;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.grey.withValues(alpha: .1),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          Text(
            label,
            style: TextStyle(
              color: Colors.white.withValues(alpha: .3),
              fontSize: 20,
            ),
          ),
          Text(
            value.toInt().toString(),
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 55,
            ),
          ),
          Row(
            children: [
              RoundedIconButton(icon: Icons.remove, onPressed: onDecrement),
              SizedBox(width: 10),
              RoundedIconButton(icon: Icons.add, onPressed: onIncrement),
            ],
          ),
        ],
      ),
    );
  }
}
