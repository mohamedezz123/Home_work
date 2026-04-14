import 'package:flutter/material.dart';

class NoTaskWidget extends StatelessWidget {
  const NoTaskWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.check_circle_outline_outlined,
            size: 100,
            color: Color(0xffA8CFCC),
          ),
          SizedBox(height: 20),
          Text('No tasks yet', style: TextStyle(fontSize: 20)),
          SizedBox(height: 10),
          Text(
            'Add a task to get started',
            style: TextStyle(color: Colors.black26),
          ),
        ],
      ),
    );
  }
}
