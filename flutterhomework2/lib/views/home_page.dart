import 'package:flutter/material.dart';
import 'package:flutterhomework2/widgets/custom_button.dart';
import 'package:flutterhomework2/widgets/feature_card.dart';
import 'package:flutterhomework2/widgets/header_section.dart';
import 'package:flutterhomework2/widgets/stats_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFEF7FF),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(flex: 1),
            HeaderSection(),
            SizedBox(height: 32),
            Text(
              'Quick Stats',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: StatsCard(
                    icon: Icons.people,
                    value: '1,1234',
                    label: 'User',
                    iconColor: Color(0xff5F3FA0),
                  ),
                ),
                Expanded(
                  child: StatsCard(
                    icon: Icons.star,
                    value: '4.8',
                    label: 'User',
                    iconColor: Color(0xffFF9000),
                  ),
                ),
                Expanded(
                  child: StatsCard(
                    icon: Icons.trending_up,
                    value: '98%',
                    label: 'User',
                    iconColor: Color(0xff3A98CE),
                  ),
                ),
              ],
            ),
            SizedBox(height: 32),
            Text(
              'Features',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            SizedBox(height: 32),

            FeatureCard(
              icon: Icons.speed,
              title: 'Fast Performance',
              subtitle: 'Ligtning Fast Performance',
              iconColor: Color(0xff9179B3),
              iconBackgroundColor: Color(0xffEFEBF9),
            ),
            FeatureCard(
              iconBackgroundColor: Color(0xffE7F5FE),
              iconColor: Color(0xff129DF0),
              icon: Icons.security,
              title: 'Secure',
              subtitle: 'Your data is safe with us ',
            ),
            FeatureCard(
              iconBackgroundColor: Color(0xffFFEBC8),
              iconColor: Color(0xffF79403),
              icon: Icons.palette,
              title: 'Beautiful Ui',
              subtitle: 'Modern and clean design',
            ),
            Spacer(flex: 2),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomButton(color: Colors.blue, label: 'Setting'),
                SizedBox(width: 12),
                CustomButton(color: Colors.orange, label: 'profile'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
