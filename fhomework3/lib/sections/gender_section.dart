import 'package:fhomework3/widgets/icon_label_button.dart';
import 'package:flutter/material.dart';

class GenderSection extends StatelessWidget {
  const GenderSection({
    super.key,
    required this.isMale,
    required this.onMaleTap,
    required this.onFemaleTap,
  });

  final bool isMale;
  final VoidCallback onMaleTap;
  final VoidCallback onFemaleTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconLabelButton(
          icon: Icons.male,
          label: 'MALE',
          onTap: onMaleTap,
          isSelected: isMale,
        ),
        SizedBox(width: 16),
        IconLabelButton(
          icon: Icons.female,
          label: 'Female',
          onTap: onFemaleTap,
          isSelected: !isMale,
        ),
      ],
    );
  }
}
