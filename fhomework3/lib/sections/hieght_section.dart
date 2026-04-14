import 'package:flutter/material.dart';

class HieghtSection extends StatelessWidget {
  HieghtSection({super.key, required this.height, required this.onChanged});
  final double height;
  final ValueChanged<double> onChanged;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 16),
      decoration: BoxDecoration(
        color: Colors.grey.withValues(alpha: .1),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          Text(
            'HEIGHT',
            style: TextStyle(
              color: Colors.white.withValues(alpha: .3),
              fontSize: 20,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                (height.toInt().toString()),
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 55,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 35.0),
                child: Text(
                  'cm',
                  style: TextStyle(
                    color: Colors.white.withValues(alpha: .3),
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),

          SliderTheme(
            data: SliderTheme.of(context).copyWith(
              trackHeight: 2,
              activeTrackColor: Colors.white,
              inactiveTrackColor: Colors.grey[700],
              thumbColor: Colors.pink,
              overlayColor: Colors.pink.withOpacity(0.2),
              thumbShape: RoundSliderThumbShape(enabledThumbRadius: 14),
            ),
            child: Slider(
              min: 100,
              max: 220,
              value: height,
              onChanged: onChanged,
            ),
          ),
        ],
      ),
    );
  }
}
