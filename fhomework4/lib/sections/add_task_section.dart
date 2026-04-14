import 'package:fhomework4/widgets/custom_text_field.dart';
import 'package:fhomework4/widgets/rounded_icon_button.dart';
import 'package:flutter/material.dart';

class AddTaskSection extends StatelessWidget {
  AddTaskSection({super.key, required this.onAdd});
  final Function(String) onAdd;
  final TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      decoration: BoxDecoration(
        color: Colors.white,

        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        children: [
          CustomTextField(controller: controller),
          SizedBox(width: 5),
          RoundedIconButton(
            onPressed: () {
              onAdd(controller.text);
              controller.clear();
            },
          ),
        ],
      ),
    );
  }
}
