import 'package:fhomework4/sections/add_task_section.dart';
import 'package:fhomework4/sections/tasks_section.dart';
import 'package:flutter/material.dart';

class HomePageView extends StatelessWidget {
  HomePageView({super.key});
  final GlobalKey<TasksSectionState> tasksKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xff9EF2E3),
        title: Text('My Tasks', style: TextStyle(fontWeight: FontWeight.bold)),
      ),
      body: Column(
        children: [
          Expanded(child: TasksSection(key: tasksKey)),
          AddTaskSection(
            onAdd: (value) {
              tasksKey.currentState?.addTask(value);
            },
          ),
        ],
      ),
    );
  }
}
