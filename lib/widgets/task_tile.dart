import 'package:flutter/material.dart';
import 'package:flutter_states_management/model/task.dart';

class TaskTile extends StatelessWidget {
  final Task task;
  final Function checkBoxCallback;
  final Function onLongPressCallBack;

  const TaskTile(
      {super.key,
      required this.task,
      required this.checkBoxCallback,
      required this.onLongPressCallBack});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: () {
        onLongPressCallBack();
      },
      title: Text(
        task.name,
        style: TextStyle(
          decoration: task.isDone ? TextDecoration.lineThrough : null,
          fontSize: 18,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: task.isDone,
        onChanged: (value) {
          checkBoxCallback();
        },
      ),
    );
  }
}
