import 'package:flutter/material.dart';

class RoundedIconButton extends StatelessWidget {
  const RoundedIconButton({super.key, required this.onPressed});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.black12,
        shape: BoxShape.circle,
      ),
      child: IconButton(
        icon: Icon(Icons.add, color: Colors.white),
        onPressed: onPressed,
      ),
    );
  }
}
