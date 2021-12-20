import 'package:flutter/material.dart';
import 'package:todoey/models/task.dart';

class TasksTile extends StatelessWidget {
  TasksTile(
      {this.isChecked, this.taskTitle, this.toggleCheckbox, this.onLongPress});
  final bool isChecked;
  final String taskTitle;
  final Function toggleCheckbox;
  final Function onLongPress;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: onLongPress,
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: toggleCheckbox,
      ),
    );
  }
}
