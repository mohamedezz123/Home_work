import 'package:flutter/material.dart';

class IconLabelButton extends StatelessWidget {
  const IconLabelButton({
    super.key,
    required this.icon,
    required this.label,
    required this.onTap,
    this.isSelected,
  });
  final isSelected;
  final VoidCallback onTap;
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: AnimatedContainer(
          duration: Duration(milliseconds: 200),
          padding: EdgeInsets.symmetric(horizontal: 42, vertical: 32),
          decoration: BoxDecoration(
            color: isSelected
                ? Color(0xff1D1E33)
                : Colors.grey.withValues(alpha: .08),
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
              color: isSelected
                  ? Colors.pinkAccent.withValues(alpha: .25)
                  : Colors.transparent,
              width: 1.5,
            ),
          ),
          child: Column(
            children: [
              Icon(icon, color: Colors.white, size: 80),
              Text(
                label,
                style: TextStyle(
                  color: Colors.white.withValues(alpha: .3),
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
