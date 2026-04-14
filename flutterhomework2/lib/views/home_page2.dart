import 'package:flutter/material.dart';
import 'package:flutterhomework2/widgets/icon_label_button.dart';

class HomePage2 extends StatelessWidget {
  const HomePage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(flex: 1),
            Text(
              'Flutter Layout Demo',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            Image.asset('assets/5893485615007862164.jpg'),
            SizedBox(height: 16),
            Card(
              elevation: 0,
              color: Colors.transparent,
              child: ListTile(
                title: Text(
                  'Oeschinen Lake Campground',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text('Kandersteg, Switzerland'),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.star, color: Colors.red),
                    SizedBox(width: 4),
                    Text('41'),
                  ],
                ),
              ),
            ),
            SizedBox(height: 16),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconLabelButton(icon: Icons.call, label: 'CALL'),
                IconLabelButton(icon: Icons.near_me, label: 'ROUTE'),
                IconLabelButton(icon: Icons.share, label: 'SHARE'),
              ],
            ),
            SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
              child: Text(
                'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps. Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. A gondola ride from Kandersteg,followed by a half-hour walk through pastures and pine forest, leads you to the lake, which warms to 20 degrees Celsius in the summer.Activities enjoyed here include rowing, and riding the summer toboggan run.',
              ),
            ),
            Spacer(flex: 1),
          ],
        ),
      ),
    );
  }
}
