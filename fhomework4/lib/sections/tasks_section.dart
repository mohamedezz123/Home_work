import 'package:fhomework4/models/task_model.dart';
import 'package:fhomework4/widgets/no_task_widget.dart';
import 'package:fhomework4/widgets/tasks_widget.dart';
import 'package:flutter/material.dart';

class TasksSection extends StatefulWidget {
  const TasksSection({super.key});

  @override
  State<TasksSection> createState() => TasksSectionState();
}

class TasksSectionState extends State<TasksSection> {
  List<TaskModel> tasks = [];

  void addTask(String title) {
    setState(() {
      tasks.add(TaskModel(title: title, subtitle: DateTime.now().toString()));
    });
  }

  @override
  Widget build(BuildContext context) {
    if (tasks.isEmpty) {
      return const NoTaskWidget();
    }

    return TasksWidget(tasks: tasks);
  }
}
