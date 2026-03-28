import 'package:flutter/material.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      color: Color(0xff8160B9),
      margin: EdgeInsets.all(16),

      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Hello! 👋',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            Text(
              'Try your best to build this ui',
              style: TextStyle(color: Color(0xffFDE7FF)),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Get Started',
                  style: TextStyle(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff673BB7),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(12),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
