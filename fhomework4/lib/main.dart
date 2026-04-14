import 'package:fhomework4/views/home_page_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyTasks());
}

class MyTasks extends StatelessWidget {
  const MyTasks({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePageView());
  }
}
