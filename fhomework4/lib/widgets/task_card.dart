import 'package:flutter/material.dart';

class TaskCard extends StatefulWidget {
  TaskCard({super.key, required this.title, required this.subtitle});
  final String title;
  final String subtitle;

  @override
  State<TaskCard> createState() => _TaskCardState();
}

class _TaskCardState extends State<TaskCard> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: ListTile(
            title: Text(
              widget.title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                decoration: isChecked
                    ? TextDecoration.lineThrough
                    : TextDecoration.none,
                decorationThickness: 4,
              ),
            ),
            subtitle: Text(widget.subtitle),
            leading: Checkbox(
              value: isChecked,
              onChanged: (value) {
                isChecked = value!;
                setState(() {});
              },
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(Icons.delete_outline, color: Colors.red),
            ),
          ),
        ),
      ),
    );
  }
}
