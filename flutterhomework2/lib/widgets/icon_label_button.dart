import 'package:flutter/material.dart';

class IconLabelButton extends StatelessWidget {
  const IconLabelButton({super.key, required this.icon, required this.label});

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: Color(0xff664EA6)),
        Text(label, style: TextStyle(color: Color(0xff664EA6))),
      ],
    );
  }
}
