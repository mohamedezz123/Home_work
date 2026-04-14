import 'package:fhomework4/models/task_model.dart';
import 'package:fhomework4/widgets/task_card.dart';
import 'package:flutter/material.dart';

class TasksWidget extends StatelessWidget {
  const TasksWidget({super.key, required this.tasks});
  final List<TaskModel> tasks;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          return TaskCard(
            title: tasks[index].title,
            subtitle: tasks[index].subtitle,
          );
        },
      ),
    );
  }
}
